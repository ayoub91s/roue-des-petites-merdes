# La Roue des Petites Merdes — V3

## Installation GitHub Pages
Déposez **index.html, app.js, content.json, lea-photo.jpg, manifest.webmanifest et .nojekyll** à la racine du dépôt. Remplacez les fichiers de la V2 par ceux de la V3. Le lien GitHub Pages reste inchangé.

## Fonctionnement
- Fond pastel existant adapté au matin, à la journée, au soir et à la nuit, avec soleil/lune et messages toutes les 20 minutes.
- 45 citations + surprises et tickets ; cartes colorées par catégorie, animations, cœurs et confettis.
- Lors d'une première découverte, animation +1 et progression par catégorie. Les doublons n'augmentent pas le nombre de découvertes uniques.
- Les tickets bronze, argent et or déclenchent un deuxième tirage parmi 5 cadeaux.
- Photo de Léa : `lea-photo.jpg` à la racine.
- Progression locale : clé `petites-merdes-history-v1`, identique à la V2. **Ne pas changer le domaine du site** si vous souhaitez conserver la progression locale.
- Les contenus sont relus toutes les 60 secondes. Les fichiers mis à jour sur GitHub peuvent prendre quelques minutes à être publiés.

## Ce qui est reporté
- **V4 :** Supabase, authentification, progression synchronisée, administration privée.
- **V5 :** Qui suis-je / Who I am, Who I was, Qui vais-je devenir.

## Important
- Cette V3 sauvegarde les tirages dans le navigateur seulement. Effacer les données du site ou changer d'appareil peut effacer la progression.
- Les tickets peuvent être gagnés plusieurs fois ; une attribution à usage unique et fiable nécessite un serveur.
- Le dépôt GitHub Pages public expose la photo de Léa : obtenir son accord avant publication.
- Les anciens fichiers `config.js`, `supabase.sql`, `build.py` peuvent rester dans le dépôt mais ne sont pas utilisés par cette V3. Ne jamais mettre de clé secrète dans un fichier public.
