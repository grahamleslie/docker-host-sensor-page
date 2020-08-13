FROM nginx:latest

RUN apt-get update && apt-get -y install lm-sensors

RUN rm -rf /usr/share/nginx/html/index.html

COPY scan.sh /bin/scan.sh

CMD sensors-detect --auto && /bin/scan.sh