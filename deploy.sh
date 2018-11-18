#!/bin/bash


ROUGE=$(echo -e "\033[0;31m")
VERTE=$(echo -e "\033[0;32m")
NORML=$(echo -e "\033[0m")

# rebuild
read -p $ROUGE"Souhaitez-vous rebuild tous les containers (y), ou simplement les up (n) ? "$NORML FORCE_REBUILD
if [ "$FORCE_REBUILD" == "y" ]
then
    docker-compose up --build
else
    docker-compose up
fi
