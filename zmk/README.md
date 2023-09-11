according this, https://www.losant.com/blog/how-to-access-serial-devices-in-docker
need to set udev Rule, but mac don't have permission

docker run --privileged -v /dev:/dev -it --name zmk --add-host=host.docker.internal:host-gateway shiqi614/zmk

