#!/bin/bash

PAGE=/usr/share/nginx/html/index.html

function clear_page() {
    rm -rf $PAGE
}

function write_page() {
    DATA=$(sensors)
    echo "<html>
<pre>
$DATA
</pre>
</html>
" > $PAGE
}

for (( ; ; ))
do
    clear_page
    write_page
    sleep 60
done
