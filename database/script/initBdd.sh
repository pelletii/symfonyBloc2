#!/bin/bash
echo "Exécution du script initDBB.sh..."

SQL_FILE_ENV="database/sourcesSql/creatBdd.sql"



# Créer la base de données à partir du fichier SQL
echo "Création de la base de données à partir de $SQL_FILE_ENV..."
sudo mysql -u root < $SQL_FILE_ENV

echo "Script initDBB.sh exécuté avec succès."