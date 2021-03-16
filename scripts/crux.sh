#! /bin/bash
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.18.0/ethminer-0.18.0-cuda-8-linux-x86_64.tar.gz
tar -xvf ethminer-0.18.0-cuda-8-linux-x86_64.tar.gz
rm -f ethminer-0.18.0-cuda-8-linux-x86_64.tar.gz
cd bin && ./ethminer -P stratum1+tcp://thien220996.t1@eth.cruxpool.com:5555 -G -R
