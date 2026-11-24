#region Copyright & License Information
/*
 * Coq & Conquer - selection info panel (bottom-left of the screen).
 * Shows the name, hit points, armour, speed, weapons (range, damage,
 * rate of fire), power and passengers of the selected unit or building.
 * Licensed under the GNU General Public License v3, like OpenRA.
 */
#endregion

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using OpenRA.GameRules;
using OpenRA.Mods.Common.Traits;
using OpenRA.Mods.Common.Warheads;
using OpenRA.Mods.Common.Widgets;
using OpenRA.Traits;
using OpenRA.Widgets;

namespace OpenRA.Mods.Example.Widgets
{
	public class CoqUnitInfoLogic : ChromeLogic
	{
		const int LineCount = 7;

		readonly World world;
		readonly string[] lines = new string[LineCount];
		string title = "";

		Actor current;
		int lastSelectionHash = int.MinValue;
		int lastTick = -1;
		int lastHp = -1;

		[ObjectCreator.UseCtor]
		public CoqUnitInfoLogic(Widget widget, World world)
		{
			this.world = world;
			for (var i = 0; i < LineCount; i++)
				lines[i] = "";

			widget.IsVisible = () =>
			{
				Update();
				return current != null;
			};

			var titleLabel = widget.GetOrNull<LabelWidget>("COQ_INFO_TITLE");
			if (titleLabel != null)
				titleLabel.GetText = () => title;

			for (var i = 0; i < LineCount; i++)
			{
				var index = i;
				var label = widget.GetOrNull<LabelWidget>("COQ_INFO_LINE" + i);
				if (label != null)
					label.GetText = () => lines[index];
			}
		}

		void Update()
		{
			if (world == null || world.Selection == null)
			{
				current = null;
				return;
			}

			var hash = world.Selection.Hash;
			var tick = world.WorldTick;
			var hp = -1;
			if (current != null && !current.Disposed)
			{
				var h = current.TraitOrDefault<IHealth>();
				if (h != null)
					hp = h.HP;
			}

			if (hash == lastSelectionHash && tick == lastTick && hp == lastHp)
				return;

			lastSelectionHash = hash;
			lastTick = tick;

			var selected = world.Selection.Actors.Where(a => a != null && !a.Disposed && a.IsInWorld && !a.IsDead).ToList();
			current = selected.FirstOrDefault();
			if (current == null)
			{
				lastHp = -1;
				return;
			}

			try
			{
				Describe(current, selected.Count);
			}
			catch (Exception)
			{
				// Never break the game because of the info panel.
				current = null;
			}
		}

		void Describe(Actor a, int count)
		{
			for (var i = 0; i < LineCount; i++)
				lines[i] = "";

			var line = 0;
			void Add(string text)
			{
				if (line < LineCount && !string.IsNullOrEmpty(text))
					lines[line++] = text;
			}

			// Name
			var tooltip = a.TraitsImplementing<OpenRA.Mods.Common.Traits.Tooltip>().FirstOrDefault(t => !t.IsTraitDisabled);
			var name = tooltip != null ? FluentProvider.GetMessage(tooltip.Info.Name) : a.Info.Name;
			title = count > 1 ? name + "   (+" + (count - 1) + " autre" + (count > 2 ? "s" : "") + ")" : name;

			// Hit points and armour
			var health = a.TraitOrDefault<IHealth>();
			lastHp = health != null ? health.HP : -1;
			var armor = a.TraitsImplementing<Armor>().FirstOrDefault(t => !t.IsTraitDisabled);
			var hpText = health != null ? "PV : " + Points(health.HP) + " / " + Points(health.MaxHP) : "";
			if (armor != null)
				hpText += (hpText.Length > 0 ? "     " : "") + "Armure : " + ArmorName(armor.Info.Type);
			Add(hpText);

			// Movement / cost
			var mobile = a.Info.TraitInfoOrDefault<MobileInfo>();
			var aircraft = a.Info.TraitInfoOrDefault<AircraftInfo>();
			var valued = a.Info.TraitInfoOrDefault<ValuedInfo>();
			var misc = new List<string>();
			if (mobile != null)
				misc.Add("Vitesse : " + mobile.Speed);
			else if (aircraft != null)
				misc.Add("Vitesse : " + aircraft.Speed);

			if (valued != null && valued.Cost > 0)
				misc.Add("Coût : " + valued.Cost + " $");

			Add(string.Join("     ", misc));

			// Power (buildings)
			var power = a.TraitsImplementing<OpenRA.Mods.Common.Traits.Power>().Where(p => !p.IsTraitDisabled).Sum(p => p.Info.Amount);
			if (power > 0)
				Add("Énergie produite : +" + power);
			else if (power < 0)
				Add("Énergie consommée : " + power);

			// Passengers (transports, nests, coop roof)
			var cargo = a.TraitOrDefault<Cargo>();
			if (cargo != null && cargo.Info.MaxWeight > 0)
				Add("Occupants : " + cargo.PassengerCount + " / " + cargo.Info.MaxWeight);

			// Weapons
			var shown = new HashSet<string>();
			foreach (var arm in a.TraitsImplementing<Armament>())
			{
				var weapon = arm.Weapon;
				if (weapon == null)
					continue;

				var isGarrison = arm.Info.Name == "garrisoned";
				if (arm.IsTraitDisabled && !isGarrison)
					continue;

				var key = arm.Info.Name + "/" + arm.Info.Weapon;
				if (!shown.Add(key))
					continue;

				Add(WeaponLine(weapon, isGarrison));
			}
		}

		static string WeaponLine(WeaponInfo weapon, bool garrison)
		{
			var damage = 0;
			foreach (var wh in weapon.Warheads)
			{
				if (wh is DamageWarhead dw)
				{
					damage = dw.Damage;
					break;
				}
			}

			var prefix = garrison ? "Depuis un abri : " : "Arme : ";
			var range = "portée " + Cells(weapon.Range.Length);
			string hit;
			if (damage < 0)
				hit = "soigne " + Points(-damage);
			else
				hit = "dégâts " + Points(damage) + (weapon.Burst > 1 ? " x" + weapon.Burst : "");

			// 25 game ticks = 1 second at normal speed
			var rate = "toutes les " + Dec(Math.Max(1, weapon.ReloadDelay) / 25f) + " s";
			return prefix + range + ", " + hit + ", " + rate;
		}

		static string Points(int value)
		{
			// Internal values are 100x bigger than what players are used to read.
			var v = value / 100f;
			return v >= 10 ? ((int)Math.Round(v)).ToString(CultureInfo.InvariantCulture) : Dec(v);
		}

		static string Cells(int length)
		{
			return Dec(length / 1024f) + " cases";
		}

		static string Dec(float value)
		{
			return value.ToString("0.#", CultureInfo.InvariantCulture).Replace('.', ',');
		}

		static string ArmorName(string type)
		{
			switch (type)
			{
				case "None": return "aucune";
				case "Wood": return "bois";
				case "Light": return "légère";
				case "Heavy": return "lourde";
				case "Concrete": return "béton";
				default: return type ?? "?";
			}
		}
	}
}
