**Juin 2020 – Projet transversal : WebApp de 6 modules de données journalières**
- Responsable technique, architecte et dev web d’une équipe de 6 personnes

<br><hr><br>

# YourEverydaySunshine (YES) - webApp by Tajjet Team

Projet de 1ère année de cycle ingénieur, réalisé au 06/2020 par une équipe de [6 personnes](github.com/Thiebosh/Tajjet/pulse/monthly).


### Setup de votre environnement

1. Télécharger et installer [WampServeur 3.2](www.wampserver.com/#download-group)

    - Apache version 2.4

    - MySQL version 8.0
    
    - PHP version 7.3

2. Utiliser par défaut MySQL : 
  * lancer wamp
  * clic gauche sur l'icone de wamp apparue dans la barre des tâches (côté droit)
  * vérifier qu'il y ait bien MySQL
  * S'il n'a pas la marque de validation, clic gauche sur l'icone wamp -> outils -> inverser SGBD par défaut

2. Placer le projet dans le dossier www de Wamp (chemin absolu : '\*yourDisc\*:/wamp64/www')

2. Télécharger et installer [Python 3.6](www.python.org/downloads/release/python-368/)


### Setup du fichier config.json

La configuration du projet s'effectue dans le fichier config.json. Avant lancement du programme, il est nécessaire de dupliquer config_example.json, de le renommer en config.json et d'appliquer ses propres informations dans ce fichier.

* Python
  * executable : chemin d'accès absolu à votre exécutable python 3.6

* DB
  * connexion
    * username : nom d'utilisateur de phpMyAdmin (root par défaut)
    * password : mot de passe associé à l'utilisateur (vide par défaut)

  * setup
    * DBname : nom de la base de données de la webApp sur phpMyAdmin (everydaySunshine par défaut)
    * characterSet : encodage par défaut des caractères pour la base de données (latin1 par défaut)
    * classification : mode de comparaison des données de la base de données (latin1_general_ci par défaut)


### Mise en route de la webapp

1. Lancer Wamp et attendre que les trois services soient actifs

2. A la première utilisation, dans le navigateur, entrer l'url de monitoring localhost/\*yourPathBetweenWWWAndTajjetFolder\*/Tajjet/index.php?action=setup_db


### Monitoring de la base de données

1. La base de données possède ses propres mécanismes de rafraichissement : le contenu des tables nécessitant un renouvellement se met à jour automatiquement : se référer aux tables Renewal et Frequency pour plus d'information.

2. La base de données est administrable via 3 URL de monitoring :
  * index.php?action=setup_db     : pour (re)créer la base de données à partir du fichier sql initial et la pré-remplir à l'aide du core python
  * index.php?action=backup_db    : pour exporter un script sql (structure + données) sur le serveur
  * index.php?action=load_backup  : pour importer le script sql de backup du serveur, s'il existe

3. la base de données est exportable côté client via l'url index.php?action=download_db :
  * point de départ vers une proposition de récupération des données propres à l'utilisateur, en respect de la loi RGPD



### Visuels du site

(wip - découper gif pour chaque module)

![createFunction](https://github.com/Thiebosh/Tajjet/raw/master/readme_content/visuel.gif)
