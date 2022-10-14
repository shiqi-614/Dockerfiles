# nrf52-keyboard
docker build -t shiqi614/nrf52-keyboard .

docker run -it --name nrf52-keyboard --add-host=host.docker.internal:host-gateway shiqi614/nrf52-keyboard

docker push shiqi614/nrf52-keyboard

docker exec -it nrf52 /bin/zsh
