#!/bin/sh

if [[ $(wget -q -t 1 --spider --dns-timeout 3 --connect-timeout 10  host:port; echo $?) -eq 0 ]]; then echo "OK"; else echo "FAIL"; fi
