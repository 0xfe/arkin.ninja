#!/bin/sh

BUCKET=gs://arkin.ninja
URL=${BUCKET}

echo Uploading website...
gsutil -h "Cache-control:public,max-age=300" -m cp -a public-read -z html,css,js -r * ${URL}
