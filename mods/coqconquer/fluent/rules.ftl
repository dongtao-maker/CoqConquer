## Coq & Conquer - textes en français

actor-dt-wall =
    .name = Haie de bambou
    .description =
        Mur bon marché.

actor-dt-nest =
    .name = Nid de garde
    .description =
        Défense anti-infanterie.
          Fort contre : infanterie
          Faible contre : véhicules

actor-dt-firecracker =
    .name = Tour à pétards
    .description =
        Défense antiaérienne.
          Fort contre : aviation
          Ne peut pas tirer au sol

actor-dt-mortar =
    .name = Mortier à noix de coco
    .description =
        Défense antichar à courte portée.
          Fort contre : véhicules
          Faible contre : infanterie

actor-dt-chick =
    .description =
        Éclaireur rapide et pas cher.
        Repère les unités enterrées.
          Fort contre : rien
          Faible contre : tout
    .name = Poussin

actor-dt-chicken =
    .description =
        Infanterie de base, robuste, aux coups de patte puissants.
          Fort contre : infanterie
          Faible contre : véhicules, lance-flammes
    .name = Poulet Đông Tảo

actor-dt-grenadier =
    .description =
        Lance des œufs durs (dégâts de zone).
          Fort contre : infanterie groupée, bâtiments
          Faible contre : véhicules
    .name = Coq grenadier

actor-dt-motherhen =
    .description =
        Soigne l'infanterie proche.
          Sans arme
    .name = Mère poule

actor-dt-farmer =
    .description =
        Capture les bâtiments ennemis et répare les ponts.
          Sans arme
    .name = Fermier

actor-dt-dragonrooster =
    .description =
        Coq d'élite qui piétine les véhicules.
          Fort contre : véhicules légers et moyens
          Faible contre : masses d'infanterie, aviation
    .name = Coq dragon

actor-dt-dongtaorhlelas =
    .description =
        HÉROS. Le doyen légendaire du village de Đông Tảo.
        Tape du pied (dégâts de zone), picore les avions,
        écrase l'infanterie. Poulets proches : +15 % de dégâts.
          Fort contre : infanterie, aviation
          Faible contre : antichar, artillerie
        Maximum 1.
    .name = Dong TaoRhlélas

actor-dt-fact =
    .name = Cour de ferme

actor-dt-powr =
    .name = Moulin à eau
    .description =
        Fournit de l'énergie.

actor-dt-bigpowr =
    .name = Grand moulin à eau
    .description =
        Fournit deux fois plus d'énergie
        qu'un moulin à eau.

actor-dt-proc =
    .name = Grenier à riz
    .description =
        Stocke les ressources récoltées.
        Livré avec une Charrette à buffle.

actor-dt-barr =
    .name = Poulailler
    .description =
        Entraîne les poulets Đông Tảo et le héros.
        Jusqu'à 4 poulets ou coqs grenadiers peuvent
        monter sur le toit : les poulets lancent des fientes,
        les grenadiers des œufs.

actor-dt-weap =
    .name = Atelier de bambou
    .description =
        Construit les véhicules Đông Tảo.

actor-dt-radar =
    .name = Pagode de guet
    .description =
        Affiche la minicarte et repère les unités enterrées.
        Débloque le niveau 2 et le Chant de l'aube.
    .grantexternalconditionpower-name = Chant de l'aube
    .grantexternalconditionpower-description =
        Tes unités dans la zone vont 25 % plus vite
        pendant 20 secondes.

actor-dt-hatch =
    .name = Couvoir impérial
    .description =
        Les précieux œufs Đông Tảo rapportent de l'argent.
        +15 crédits toutes les 10 secondes.
        Maximum 2.

actor-dt-temple =
    .name = Temple du Coq d'Or
    .description =
        Débloque le niveau 3 : Coq dragon, Catapulte à œufs
        et le héros Dong TaoRhlélas.

actor-dt-altar =
    .name = Autel de l'Aube
    .description =
        Déclenche la Pluie d'œufs.
        Gros dégâts aux bâtiments et à l'infanterie.
        Maximum 1.
    .nukepower-name = Pluie d'œufs
    .nukepower-description =
        Une pluie d'œufs géants s'abat sur la zone ciblée.

actor-dt-mcv =
    .name = Charrette du chef
    .description =
        Se déploie en Cour de ferme.

actor-dt-harv =
    .name = Charrette à buffle
    .description =
        Récolte les ressources.
          Sans arme

actor-dt-scooter =
    .description =
        Scooter de reconnaissance rapide avec mitrailleuse.
          Fort contre : infanterie
          Faible contre : blindés
    .name = Scooter de Hanoï

actor-dt-ricetruck =
    .name = Camion rizière
    .description =
        Transporte 5 fantassins.
          Fort contre : infanterie
          Faible contre : blindés

actor-dt-firecrackerlauncher =
    .description =
        Lance des roquettes-pétards sur les avions
        et des salves de pétards sur l'infanterie.
          Fort contre : aviation, infanterie
          Faible contre : blindés
    .name = Lance-pétards

actor-dt-tractor =
    .name = Tracteur blindé
    .description =
        Char moyen lent mais solide.
          Fort contre : véhicules
          Faible contre : infanterie antichar, aviation

actor-dt-eggcatapult =
    .name = Catapulte à œufs
    .description =
        Artillerie à longue portée.
          Fort contre : bâtiments, infanterie
          Faible contre : tout ce qui l'approche

actor-dt-kite =
    .description =
        Éclaireur volant sans arme.
        Les Đông Tảo n'ont pas d'avion d'attaque.
    .name = Cerf-volant de guet

faction-dongtao =
    .name = Đông Tảo
    .description =
        La Garde du Dragon du village de Đông Tảo.
        Forces : infanterie robuste et pas chère, revenu des œufs, soins.
        Faiblesses : véhicules lents, pas d'avion d'attaque.
        Héros : Dong TaoRhlélas

faction-rodents =
    .name = Ligue des Rongeurs
    .description =
        Marmottes et écureuils des montagnes et des forêts.
        Forces : unités rapides, écureuils volants, embuscades enterrées.
        Faiblesses : infanterie fragile, antiaérien faible.
        Héros : Le Grand Siffleur

actor-rd-fact =
    .name = Grand Terrier

actor-rd-powr =
    .name = Roue à écureuil
    .description =
        Des écureuils courent dans une roue.
        Fournit de l'énergie.

actor-rd-proc =
    .name = Réserve de noisettes
    .description =
        Stocke les ressources récoltées.
        Réserve d'hiver : +10 crédits toutes les 10 secondes.
        Livrée avec un Chariot à glands.

actor-rd-barr =
    .name = Terrier de garde
    .description =
        Entraîne les marmottes, les écureuils et le héros.

actor-rd-weap =
    .name = Scierie
    .description =
        Construit les véhicules en bois.

actor-rd-oak =
    .name = Grand Chêne
    .description =
        Nid et piste d'envol des écureuils volants.

actor-rd-radar =
    .name = Rocher du guetteur
    .description =
        Affiche la minicarte.
        Débloque le niveau 2 et le Sifflement d'alerte.
    .spawnactorpower-name = Sifflement d'alerte
    .spawnactorpower-description =
        Dévoile une zone et révèle les unités cachées
        pendant 20 secondes.

actor-rd-cave =
    .name = Grotte d'hibernation
    .description =
        Débloque le niveau 3 : Marmotte foreuse, Catapulte à pommes de pin,
        Escadrille de polatouches et le Grand Siffleur.

actor-rd-summit =
    .name = Sommet enneigé
    .description =
        Déclenche une Avalanche sur la zone ciblée.
        Maximum 1.
    .nukepower-name = Avalanche
    .nukepower-description =
        Un mur de neige écrase tout sur la zone ciblée.

actor-rd-palisade =
    .name = Palissade de rondins
    .description =
        Mur bon marché.

actor-rd-perch =
    .name = Nid perché
    .description =
        Nid anti-infanterie camouflé.
        Invisible tant qu'il ne tire pas.
          Fort contre : infanterie
          Faible contre : véhicules

actor-rd-conelauncher =
    .name = Lance-pignes
    .description =
        Défense antichar.
          Fort contre : véhicules
          Faible contre : infanterie

actor-rd-scout =
    .description =
        Éclaireur ultra-rapide.
          Fort contre : rien
          Faible contre : tout
    .name = Écureuil éclaireur

actor-rd-guard =
    .description =
        Marmotte de base armée d'une fronde.
        S'enterre quand elle est immobile.
          Fort contre : infanterie
          Faible contre : véhicules, détecteurs
    .name = Marmotte de garde

actor-rd-acorn =
    .description =
        Tireur rapide et fragile.
          Fort contre : infanterie
          Faible contre : dégâts de zone, véhicules
    .name = Écureuil lanceur de glands

actor-rd-herbalist =
    .description =
        Soigne l'infanterie proche avec des herbes de montagne.
          Sans arme
    .name = Marmotte herboriste

actor-rd-sapper =
    .description =
        Capture les bâtiments ennemis et répare les ponts.
          Sans arme
    .name = Marmotte sapeuse

actor-rd-driller =
    .description =
        S'enterre et surgit sous les véhicules.
          Fort contre : véhicules
          Faible contre : infanterie, détecteurs
    .name = Marmotte foreuse

actor-rd-greatwhistler =
    .description =
        HÉROS. La marmotte géante ancestrale.
        Son sifflet ralentit les ennemis, il se téléporte en s'enterrant
        (touche de déploiement), les rongeurs proches vont 20 % plus vite.
        Repère les unités cachées.
          Fort contre : groupes d'infanterie
          Faible contre : tirs concentrés, chars
        Maximum 1.
    .name = Le Grand Siffleur

actor-rd-mcv =
    .name = Grand Sapin roulant
    .description =
        Un grand sapin sur son traîneau, plein d'écureuils.
        Se déploie en Grand Terrier.

actor-rd-harv =
    .name = Chariot à glands
    .description =
        Récolte les ressources.
          Sans arme

actor-rd-ram =
    .name = Tronc-bélier
    .description =
        Transporte 5 fantassins.
          Fort contre : infanterie
          Faible contre : antichar

actor-rd-stump =
    .name = Souche blindée
    .description =
        Char léger et rapide.
          Fort contre : véhicules légers
          Faible contre : antichar, Tracteur blindé

actor-rd-conecatapult =
    .name = Catapulte à pommes de pin
    .description =
        Artillerie à longue portée.
          Fort contre : bâtiments, infanterie
          Faible contre : tout ce qui l'approche

actor-rd-flyingsquirrel =
    .name = Écureuil volant
    .description =
        Volant rapide de harcèlement.
          Fort contre : infanterie, récolteurs
          Faible contre : antiaérien

actor-rd-squadron =
    .name = Escadrille de polatouches
    .description =
        Largue de lourdes noix sur les bâtiments.
          Fort contre : bâtiments, véhicules
          Faible contre : antiaérien

actor-dt-criminal =
    .name = Criminal Dong Tao
    .description =
        Char lourd géant, comme le Mammouth soviétique.
        Double canon et roquettes, se répare tout seul.
          Fort contre : véhicules, infanterie, aviation
          Faible contre : rien de spécial, mais il est lent

actor-dt-chickcopter =
    .name = Poulicoptère
    .description =
        Hélicoptère en bambou soulevé par 4 poulets Đông Tảo
        attachés au bout des pales. Débarque-les : il ne vole plus !
        Transporte des poulets ; avec des coqs grenadiers à bord,
        il bombarde le sol avec des œufs-grenades.
          Fort contre : infanterie (avec grenadiers)
          Faible contre : défense antiaérienne

actor-dt-goldmine =
    .name = Mine d'or
    .description =
        Des poulets y creusent de l'or : rapporte
        de l'argent en continu, comme un derrick.
        3 au maximum.
