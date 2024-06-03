#!/bin/bash

# Chemin vers votre base de données
DATABASE_PATH='/www/flask/database.db'

# Chemin vers le dossier de sauvegarde
BACKUP_PATH='D:\mspr-cloe855\BACKUP'

# Création du nom de fichier avec horodatage
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_PATH/database_$DATE.db"

# Copie de la base de données
cp $DATABASE_PATH $BACKUP_FILE

echo "Sauvegarde de la base de données effectuée : $BACKUP_FILE"
