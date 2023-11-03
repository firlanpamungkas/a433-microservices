#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 firlan/item-app:v1

# Login ke Docker Hub
cat ../dockerpass.txt | docker login --username firlan --password-stdin

# Mengunggah image ke Docker Hub
docker push firlan/item-app:v1
