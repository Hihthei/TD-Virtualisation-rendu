#!/bin/bash

sudo docker compose up -d
sudo docker compose run --rm exercice_2

#in another shell
curl http://localhost:3030
sudo docker compose down --remove-orphans
