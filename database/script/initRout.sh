#!/bin/bash
echo "Exécution du script procStk.sh..."

SQL_FILE_ROUT="database/sourcesSql/routinesStk.sql"



# Créer les routines stockées à partir du fichier SQL
echo "Création des routines stockées à partir de $SQL_FILE_ROUT..."
sudo mysql -u root < $SQL_FILE_ROUT