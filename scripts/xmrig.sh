#!/bin/bash

cd /content/googlecolab/scripts
chmod +x  randomx_boost.sh
./randomx_boost.sh
cd /content/googlecolab/files
tar -xf xmrig.tar.gz
./xmrig -o xmr.pool.minergate.com:45700 -u luongthien96@gmail.com -p x  --cpu-priority 5 --asm=intel --randomx-mode=fast --astrobwt-avx2 --randomx-no-rdmsr --cpu-no-yield --argon2-impl=x86_64 --threads=$(nproc) --randomx-wrmsr=-1 --randomx-cache-qos
