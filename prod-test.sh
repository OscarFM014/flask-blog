#!/bin/bash


if [ "$(command curl -o /dev/null -s -w "%{http_code}\n" https://oscarferfnandez.duckdns.org/)" -eq 200 ]
then
    exit 0
else 
    exit 1
fi
