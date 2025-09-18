#!/bin/bash

sudo docker build . -t exercice_4
sudo docker run -d exercice_4

sudo docker network create network_4
sudo docker ps
sudo docker network connect network_4 bf7912e133db

sudo docker run -d --network network_4 -e POSTGRES_USER=jonh -e POSTGRES_DB=doe -e POSTGRES_PASSWORD=jonhdoe postgres

sudo docker network inspect network_4
sudo docker ps

sudo docker run -it --network network_4 exercice_4 bash

#in network_4's bash
psql -h 34aa70e68148 --username=jonh --dbname=doe #password=jonhdoe
