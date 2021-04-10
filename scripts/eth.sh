#! bin/bash
mkdir trexminer
cd trexminer
wget https://github.com/trexminer/T-Rex/releases/download/0.19.14/t-rex-0.19.14-linux-cuda11.1.tar.gz
tar -xf t-rex-0.19.14-linux-cuda11.1.tar.gz
./t-rex -a ethash -u 3EjCK7AUv5CxMEMfbYzqL6xH3dvK5VcDhY -o stratum+tcp://daggerhashimoto.usa-east.nicehash.com:3353 -w trexminer
