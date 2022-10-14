# leetcode 
docker build -t shiqi614/leetcode .

docker run -it --name leetcode --add-host=host.docker.internal:host-gateway shiqi614/leetcode

docker push shiqi614/leetcode

docker exec -it leetcode /bin/zsh
