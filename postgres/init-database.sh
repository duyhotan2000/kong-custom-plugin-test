#!/bin/bash
set -e

set PGPASSWORD=$POSTGRES_PASSWORD

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER konguser WITH PASSWORD 'P*Z*PGcz93-w&jJR';
    CREATE DATABASE kongdb;
    GRANT ALL PRIVILEGES ON DATABASE kongdb TO konguser;
    CREATE DATABASE kongadb;
    GRANT ALL PRIVILEGES ON DATABASE kongadb TO konguser;
EOSQL