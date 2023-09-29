#!/bin/bash -xe

today_md=$(date +"%Y/%m/%Y-%m-%d.md")

if [ ! -e "src/${today_md}" ]; then
    today_month=$(date +"%Y/%m")
    mkdir -p src/${today_month}
    cp template.md src/${today_md}
fi
