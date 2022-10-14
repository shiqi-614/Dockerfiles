# c-dev
docker build -t shiqi614/c-dev .

docker run -it --name c-dev --add-host=host.docker.internal:host-gateway shiqi614/c-dev

docker push shiqi614/c-dev

docker exec -it c-dev /bin/zsh

