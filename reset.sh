#!/bin/bash

ROUGE=$(echo -e "\033[0;31m")
VERTE=$(echo -e "\033[0;32m")
NORML=$(echo -e "\033[0m")

# remove all containers
docker ps -a | grep -v CONTAINER | cut -d ' ' -f 1 | xargs docker rm -f

# remove all images
docker images -a | grep -v REPOSITORY | awk  '{printf $3"\n"}' | xargs docker rmi -f

# remove all disk space used by docker
docker volume ls | grep -v VOLUME | awk '{print $2}' | xargs docker volume rm

# remove postgres data directory
# (if this folders exists while building containers, data won't be imported)
read -p $ROUGE"Souhaitez-vous supprimer la base POSTGRESQL ? (y/n) "$NORML RM_BDD
if [ "$DM_BDD" == "y" ]
then
    /bin/rm -fr /var/lib/container_pg
fi
