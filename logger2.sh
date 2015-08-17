#!/bin/bash

##### Network Analysis Script by Joseph Slezak ###
##### Email : jjs358@scarletmail.rutgers.edu #####
 
# This script will capture packets from a specified interface and port defined
# below using tcpdump. The packets will then be analyized using tcptrace, and
# will have output directed into a .txt file. The time duration for packet
# capture should be specified, in seconds, following the -G arguement. Be sure 
# the sleep in looper.sh matches the time in -G.
# Also be sure to change to the desired interface,
# and the corresponding port number to be tested.

date '+%X' >> log_temp.txt
#echo "Logger2 tcpdump Started:" >> log.txt
sudo tcpdump -w temporary2.pcap -s 70 -i em1 port 5201 &>> log_temp.txt &
pid2=$!
sleep 30 
sudo kill -s SIGINT $pid2 &>> log_temp.txt
#echo "Logger2 tcpdump Complete" >> log.txt
# Output will be in log.txt

date '+%X' >> log_tcptrace.txt 
#echo "Logger2 tcptrace Begins:" >> log.txt
sudo tcptrace -l temporary2.pcap | grep "packets seen\|rexmt data pkts\|outoforder" >> log_tcptrace.txt
#echo "Logger2 tcptrace Completed" >> log.txt

	
sudo rm -f temporary2.pcap

# End of script
