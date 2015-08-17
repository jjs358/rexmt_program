#!/bin/bash

sudo ./iperf_check.sh &
sudo ./looper.sh &
sudo ./looper2.sh

sudo grep "AM\|PM\|packets" log_temp.txt >> log_tcpdump.txt 
sudo rm log_temp.txt
