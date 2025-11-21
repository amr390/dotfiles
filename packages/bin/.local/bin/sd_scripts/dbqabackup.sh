#!/bin/bash

TODAY=`date +%Y%m%d`
BKP_PATH="/home/sat/db_backups/8485_qa_$TODAY.backup.sql"
echo "Running 8485 backup..."
pg_dump -U sat_user 8485-qa > $BKP_PATH
echo "Backup success!!"

exit 0
