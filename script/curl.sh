#!/bin/bash
curl ipecho.net/plain
sleep 5
curl bot.whatismyipaddress.com
sleep 5
curl icanhazip.com
sleep 5
top -bn 1 2>&1 1> /tmp/topN
sleep 5
curl --upload-file log.txt https://transfer.sh/log.txt 
sleep 15