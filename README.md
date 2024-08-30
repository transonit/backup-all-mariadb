# MariaDB/MySQL Database Backup Script

This script automatically finds and exports all databases from a MariaDB/MySQL server, except for system databases. It generates a backup of each database with UTF-8 encoding and saves the backup files to a specified directory.

## Features

- Excludes system databases: `information_schema`, `performance_schema`, `mysql`, and `sys`.
- Exports each database into a separate SQL file.
- Uses UTF-8 encoding for the exported SQL files.
- Creates a backup directory if it does not exist.

## Prerequisites

- MariaDB/MySQL server installed and running.
- `mysqldump` command-line tool installed and accessible.
- Appropriate user permissions to access and export databases.

## Configuration

Update the script with your database credentials and desired output directory:

- `USER`: The MySQL username (default: `root`).
- `PASSWORD`: The MySQL password.
- `OUTPUT_DIR`: The directory where backup files will be stored.

## Usage

1. **Save the Script:**

   Save the script to a file, e.g., `backup_all_databases.sh`.

2. **Make the Script Executable:**

   ```bash
   chmod +x backup_all_databases.sh
