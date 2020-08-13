#!/bin/bash

ROOT=/usr/share/nginx/html
INDEX=$ROOT/index.html
LSHW=$ROOT/lshw.html

function clear_pages() {
    rm -rf $INDEX
    rm -rf $LSHW
}

function write_index() {
    HOSTNAME=$(hostname)
    DATA=$(sensors)
    DATE=$(date)
    echo "<html>
<h1>$HOSTNAME Sensor Data</h1>
<pre>
$DATA
</pre>
<small>Captured at $DATE.</small>
</html>
" > $INDEX
}

function write_lshw() {
    lshw -html > $LSHW
}

function write_pages() {
    write_index
    write_lshw
}

for (( ; ; ))
do
    clear_page
    write_page
    sleep 60
done
