# MyDaw webApp by Tajjet Team


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

3. Installer les dépendances du projet via la commande : `pip install -r requirements.txt`(automatisation ?)


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


### Lancement du programme

1. Lancer Wamp et attendre que les trois services soient actifs

2. A la première utilisation, utiliser les commandes de monitoring :
  * index.php?action=upload_db    : pour créer la base de données à partir du fichier sql ou recréer sa structure si elle existe déjà
  * index.php?action=fill_db      : pour initialiser la base de données (remplissage de tous les modules) à l'aide du core python
  * index.php?action=download_db  : pour exporter la structure et les données de la base de données sous forme de fichier sql

3. Dans le navigateur, entrer l'url localhost/\*yourPathBetweenWWWAndTajjetFolder\*/Tajjet/
