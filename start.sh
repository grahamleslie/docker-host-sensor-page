docker build -t docker-host-status .
docker stop docker-host-status || true
docker rm docker-host-status || true
docker run -d -p 9002:80 --privileged --name docker-host-status docker-host-status