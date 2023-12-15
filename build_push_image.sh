#!/bin/bash

# Perintah untuk menjalankan docker compose dengan spesific nama image dan tag
docker build -t item-app:v1 .

# Untuk mengecek docker images
docker images

# Spesific tag
docker tag item-app:v1 mizhura7/item-app:v1

# Push docker image ke repository
docker push mizhura7/item-app:v1