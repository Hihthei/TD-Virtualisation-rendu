#!/bin/bash

sudo docker run --rm --name postgres-simple \
    -e POSTGRES_USER=john \
    -e POSTGRES_DB=doe \
    -e POSTGRES_PASSWORD=johndoe \
    -d postgres

sudo docker run --rm --name postgres-bind-mount \
    -e POSTGRES_USER=john \
    -e POSTGRES_DB=doe \
    -e POSTGRES_PASSWORD=johndoe \
    -v "$(pwd)/data":/var/lib/postgresql/data \
    -d postgres

sudo docker volume create postgres_data
sudo docker run --rm --name postgres-volume \
    -e POSTGRES_USER=john \
    -e POSTGRES_DB=doe \
    -e POSTGRES_PASSWORD=johndoe \
    -v postgres_data:/var/lib/postgresql/data \
    -d postgres

#Correction
# set -e

# echo "[+] First one, with env on CLI"
# docker run -e POSTGRES_USER=john -e POSTGRES_DB=doe -e POSTGRES_PASSWORD=johndoe postgres

# echo "[+] Second one, with env in file"
# docker run --env-file="$(pwd)/env.txt" postgres

# echo "[+] Third one, with shared data folder here"
# [[ -d data ]] || mkdir data
# docker run --env-file="$(pwd)/env.txt" -v "$(pwd)/data":/var/lib/postgresql/data postgres

# echo "[+] Fourth one, with docker volume"
# docker volume create postgres_data_vol
# docker run --env-file="$(pwd)/env.txt" --mount source=postgres_data_vol,destination=/var/lib/postgresql/data postgres
