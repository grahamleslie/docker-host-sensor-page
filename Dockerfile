FROM nginx:latest

RUN apt-get update && apt-get -y install lm-sensors

RUN mkdir /usr/share/nginx/html

COPY scan.sh /bin/scan.sh

CMD sensors-detect && /bin/scan.sh