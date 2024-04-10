# Test technique

## Description du projet

Dans un nouveau projet rails, vous afficherez une page qui consommera l'API Star Wars suivante :
https://swapi.dev/

Cette page devra contenir une liste de tous les personnages dont la masse est supérieure à 75, groupés par film.

Pour chaque personnage, afficher :
- son nom
- sa masse
- le nom de sa planète d'origine

## Versions

- Ruby : 3.1.2
- Rails : 7.1.3.2
- Node : 18.12.0

## Installation

📦 Cloner le dépôt
```sh
git clone git@github.com:MaximeCastillo/hop3teamtest.git
```

📥 Se rendre dans le dossier
```sh
cd hop3teamtest
```

🏗️ Setup l'application
```sh
# Installer les dépendances
bundle install

# Créer la base de données
bundle exec rails db:create
```

🚀 Lancer l'application
```sh
bundle exec rails server
```
