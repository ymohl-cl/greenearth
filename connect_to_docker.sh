#!/bin/bash

docker ps | grep centra | awk '{print "docker exec -it",$1,"bash"}' > tmp && bash tmp
