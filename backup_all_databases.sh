#!/bin/bash
USER="root"
PASSWORD="son123"
OUTPUT_DIR="/home/db-bak"

# Create the output directory if it doesn't exist
mkdir -p $OUTPUT_DIR

# Get the list of all databases
databases=$(mysql -u $USER -p$PASSWORD -e "SHOW DATABASES;" -s --skip-column-names | grep -v "information_schema" | grep -v "performance_schema" | grep -v "mysql" | grep -v "sys")

# Loop through each database and export it
for db in $databases; do
  echo "Exporting database: $db"
  mysqldump --default-character-set=utf8 -u $USER -p$PASSWORD $db > $OUTPUT_DIR/${db}_backup.sql
done

echo "All databases have been exported to $OUTPUT_DIR"
