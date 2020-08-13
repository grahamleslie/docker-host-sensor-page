#!/bin/bash

PAGE=/usr/share/nginx/html/index.html

function clear_page() {
    rm -rf $PAGE
}

function write_page() {
    DATA=$(sensors)
    DATE=$(date)
    echo "<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>System Sensor Data</title>
  </head>
  <body>
    <br>
    <br>
    <br>
    <div class="container">
      <h1>System Sensor Data</h1>
      <pre>
$DATA
      </pre>
      <small>Captured at $DATE.</small>
    </div>
  </body>
</html>
" > $PAGE
}

for (( ; ; ))
do
    clear_page
    write_page
    sleep 60
done
