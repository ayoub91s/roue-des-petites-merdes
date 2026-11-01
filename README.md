# La Roue des Petites Merdes — V1

## Tester
Ouvrir `index.html` via un serveur local (par exemple `python3 -m http.server 8000`), puis http://localhost:8000.

## Publier sur GitHub Pages
1. Créer un dépôt GitHub, par exemple `roue-des-petites-merdes`.
2. Mettre `index.html`, `app.js`, `content.json`, `config.js`, `manifest.webmanifest` et `.nojekyll` à la racine.
3. Settings > Pages > Deploy from a branch > main / root.
4. L'URL sera du type https://ayoub91s.github.io/roue-des-petites-merdes/ (si dépôt et pseudo identiques).
5. Les mises à jour du dépôt sont publiées sur le même lien. L'app vérifie le contenu toutes les 60 secondes tant qu'elle est ouverte.

## Contenus
- 45 textes validés + 4 surprises + 3 types de tickets.
- Le ticket déclenche un second tirage parmi 5 cadeaux de son niveau.
- Ajouter `lea-photo.jpg` à la racine pour les tirages Interpol et CIA.
- Les cadeaux et les horoscopes sont définis dans `app.js`.

## Administration Supabase (optionnelle)
1. Créer un projet Supabase.
2. Exécuter `supabase.sql` dans SQL Editor.
3. Importer les lignes de `content.json` dans la table `content` (chaque ligne doit avoir `active=true`).
4. Créer ton utilisateur dans Authentication > Users.
5. Insérer son UUID dans `admins` en exécutant l'instruction indiquée dans `supabase.sql`.
6. Renseigner URL et clé **publique** (anon/publishable) dans `config.js` ; ne jamais y mettre la clé service_role ni un mot de passe.
7. Utiliser l'onglet Administration pour publier et modifier les contenus.

## Sauvegarde et limites V1
- Les découvertes et tickets de Léa sont enregistrés dans `localStorage` sur son navigateur : ils survivent à une mise à jour HTML, mais pas à l'effacement des données du site ou à un changement d'appareil.
- La synchronisation de progression entre appareils nécessite une prochaine étape (connexion Léa et historique Supabase avec RLS).
- L'administration ne fonctionne qu'après configuration Supabase. Avant cela, modifier les fichiers sur GitHub.
- Les cadeaux peuvent être gagnés plusieurs fois ; un verrouillage à usage unique nécessitera une gestion serveur.
- Ne pas partager la photo de Léa publiquement sans son accord : un dépôt GitHub Pages public rend la photo accessible à toute personne connaissant son URL.

## Photo de Léa (V2)
Le fichier `lea-photo.jpg` est inclus à la racine. Il apparaît dans le dossier Interpol et les citations CIA, Interpol et 47 pays. Publier ce fichier avec les autres fichiers sur GitHub Pages. Attention : sur un dépôt public, cette photo sera publiquement accessible via son URL. Obtenir l’accord de Léa avant publication.
