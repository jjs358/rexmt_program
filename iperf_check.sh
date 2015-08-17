
#!/bin/bash


date '+%X' >> log_iperf_check.txt

#iperf3 -c 10.10.99.40 -i 60 -t 300 >> log_iperf_check.txt
iperf3 -c dresci.incntre.iu.edu -i 10 -t 150 >> log_iperf_check.txt



