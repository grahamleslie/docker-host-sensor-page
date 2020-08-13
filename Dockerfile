FROM nginx:latest

RUN apt-get update && apt-get -y install cron lm-sensors nginx

RUN sensors-detect

RUN mkdir /usr/share/nginx/html

COPY cron /etc/cron.d/cron
RUN chmod 0644 /etc/cron.d/cron

RUN crontab /etc/cron.d/ccron
RUN touch /var/log/cron.log

RUN ufw allow 'Nginx HTTP'

CMD cron && tail -f /var/log/cron.log