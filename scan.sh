#!/bin/bash
 
for (( ; ; ))
do
    rm -rf /usr/share/nginx/html/index.html

    DATA = sensors
    
"
<html>
<plaintext>
$DATA
</plaintext>
</html>
" > /usr/share/nginx/html/index.html

    sleep 60
done