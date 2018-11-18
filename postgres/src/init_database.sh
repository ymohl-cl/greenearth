#!/bin/bash

# ce script est execute lors du build du container
# il importe la structure et le jeu de données minimal


echo "*** CREATING POSTRGES DATABASE ***"
psql --user postgres <<- EOSQL
  CREATE DATABASE "postrges";
  GRANT ALL PRIVILEGES ON DATABASE "postrges" TO postgres;
EOSQL
echo "*** DATABASE POSTRGES CREEE ! ***"
# import postrges
psql --user postgres --dbname "postrges" < /tmp/psql_data/00_postgres_schema.sql ;
psql --user postgres --dbname "postrges" < /tmp/psql_data/01_postgres_data.sql ;
echo "*** POSTRGES DATAS IMPORTEES ! ***"
