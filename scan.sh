#!/bin/bash

PAGE=/usr/share/nginx/html/index.html

for (( ; ; ))
do
    clear_page
    write_page
    sleep 60
done

function clear_page() {
    rm -rf $PAGE
}

function write_page() {
    DATA=$(sensors)
    CONTENT="
    <html>
    <pre>
    $DATA
    </pre>
    </html>
    "

    echo $CONTENT > $PAGE
}