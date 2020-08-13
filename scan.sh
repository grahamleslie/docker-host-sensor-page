#!/bin/bash

PAGE=/usr/share/nginx/html/index.html

function clear_page() {
    rm -rf $PAGE
}

function write_page() {
    DATA=$(sensors)
    DATE=$(date)
    echo "<html>
<h1>System Sensor Data</h1>
<pre>
$DATA
</pre>
<small>Captured at $DATE.</small>
</html>
" > $PAGE
}

for (( ; ; ))
do
    clear_page
    write_page
    sleep 60
done
