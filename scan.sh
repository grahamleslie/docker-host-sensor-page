#!/bin/bash
 
for (( ; ; ))
do
   sensors &> /usr/share/nginx/html/index.html
   sleep 60
done