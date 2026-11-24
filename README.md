# Coq et Conquer 🐔⚔️🐿️

Un jeu de stratégie en temps réel construit avec le moteur [OpenRA](https://www.openra.net) :
les **poulets Đông Tảo** affrontent la **Ligue des Rongeurs** (marmottes et écureuils des Alpes).

## Télécharger et jouer

Va dans l'onglet **[Releases](../../releases)** et prends le fichier qui correspond à ton ordinateur :

| Système | Fichier | Comment l'utiliser |
|---|---|---|
| Windows | `CoqConquer-…-x64.exe` | Double-clique pour installer, puis lance « Coq et Conquer ». |
| Linux | `CoqConquer-…-x86_64.AppImage` | Clic droit → Propriétés → « Autoriser l'exécution », puis double-clique. |
| Mac | `CoqConquer-….dmg` | Ouvre-le, glisse le jeu dans Applications. Au premier lancement : clic droit → **Ouvrir**. |

Au premier lancement, le jeu propose de télécharger les fichiers de base de Red Alert
(gratuits) : choisis **Quick Install / Installation rapide**.

## Les factions

- **Poulets Đông Tảo** : poulets aux pattes énormes, coqs grenadiers, catapulte à œufs, Poulicoptère,
  char lourd *Criminal Dong Tao*, mine d'or, et le héros géant **Dong TaoRhlélas**.
- **Ligue des Rongeurs** : marmottes et écureuils, terriers, nids perchés, écureuils volants,
  et le héros **Le Grand Siffleur**.

## Jouer à plusieurs

Tous les joueurs doivent avoir **la même version** du jeu (la même Release).
Multijoueur → Créer un serveur (port 1234), l'autre joueur fait « Connexion directe ».

## Pour les développeurs

Projet basé sur le [OpenRA Mod SDK](https://github.com/OpenRA/OpenRAModSDK) (moteur `release-20250330`).
`make` (Linux/Mac) ou `make.cmd` (Windows) puis `launch-game.sh` / `launch-game.cmd`.
Publier une nouvelle version : changer le numéro dans `RELEASE_VERSION` puis envoyer sur la branche `release` ; GitHub fabrique les installateurs automatiquement.

Moteur OpenRA sous licence GPL v3 (voir `COPYING`).
