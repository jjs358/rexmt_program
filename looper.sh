#!/bin/bash

#1 288
#For 6 hour test use seq 1 in 720 and sleep 30 / -G 30 in tcpdump

for i in `seq 1 3`; do 
	./logger.sh &
	sleep 60
done


