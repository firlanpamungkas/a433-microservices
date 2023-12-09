#building the image
docker build . -t ghcr.io/firlanpamungkas/karsajobs:latest

#cli login
echo $CR_PAT | docker login ghcr.io -u firlanpamungkas --password-stdin

#push to the specified repo
docker push ghcr.io/firlanpamungkas/karsajobs:latest