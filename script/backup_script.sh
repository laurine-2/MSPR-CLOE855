#!/bin/bash

# Variables
storage_account_name="msprcloe855"
container_name="backups"
file_to_upload="/www/flask/database.db"
blob_name="database_$(date +%Y%m%d%H%M%S).db"

# Assurez-vous que la CLI Azure est installée et que vous êtes connecté
az login --service-principal -u [App-ID] -p [password-or-cert] --tenant [Tenant-ID]

# Uploader le fichier
az storage blob upload --account-name $storage_account_name --container-name $container_name --file $file_to_upload --name $blob_name