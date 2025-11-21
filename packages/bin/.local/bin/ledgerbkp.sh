#!/bin/sh

TODAY=$(date +%Y-%m-%d)
BKP_PATH=/home/amr/Documents/net/Dropbox/backups/
BKP_NAME="leger.$TODAY.backup"
PG_COMMAND="pg_dump"
export PGPASSWORD="dc09c7f545c365401db7b36590ec14c8677f23d2207506ccddc8835a424ff419"
$PG_COMMAND -Uqftrgxlyrmywix \
	-hec2-52-48-137-75.eu-west-1.compute.amazonaws.com \
	dbah8qko2b1jn8 \
	>$BKP_PATH/$BKP_NAME

sed -i 's/dbah8qko2b1jn8/app_user/g' $BKP_PATH/$BKP_NAME

sudo su postgres -c "dropdb ledger; createdb ledger"
psql -U app_user ledger <$BKP_PATH/$BKP_NAME
