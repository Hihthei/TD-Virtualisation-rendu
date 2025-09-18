#!/bin/bash

sudo docker compose up -d
sudo docker compose exec exercice_4 psql -U john -d doe
sudo docker compose down --remove-orphans
