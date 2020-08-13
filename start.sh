docker build -t docker-host-status .
docker stop docker-host-status || true
docker rm docker-host-status || true
docker run -p 8081:80 --privileged --name docker-host-status docker-host-status