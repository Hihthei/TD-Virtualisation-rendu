#!/bin/bash

sudo docker compose up -d
sudo docker compose ps
sudo docker compose exec exercice_3 psql -U john -d doe
sudo docker compose down --remove-orphans
