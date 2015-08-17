#!/bin/bash

#Time offset between two parallel tcpdumps/tcptraces
sleep 30

#1 288
#For 6 hour test use seq 1 in 720 and sleep 30

for i in `seq 1 2`; do 
	./logger2.sh &
	sleep 60
done


