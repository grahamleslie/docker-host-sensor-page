docker build -t docker-host-status .
docker stop docker-host-status || true
docker rm docker-host-status || true
docker run -p 8081:80 docker-host-status