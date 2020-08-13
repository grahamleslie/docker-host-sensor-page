#!/bin/bash
 
for (( ; ; ))
do
    rm -rf /usr/share/nginx/html/index.html
    sensors &> /usr/share/nginx/html/index.html
    sed -i 's/\n/<br />/g' /usr/share/nginx/html/index.html
    sleep 60
done