#!/bin/bash
# Send alerts when the honeypot is breached, including attacker activity details...


file=$(ls /home/cowrie/cowrie/var/lib/cowrie/tty/*.log | cut -d"/" -f 6)
filecount=$(ls /home/cowrie/cowrie/var/lib/cowrie/tty/*.log | wc -l)
host=$(ifconfig | grep 'inet addr' | grep -v '127' | cut -d":" -f2 | awk '{print $1}')
hostname=$(hostname)

if [ $filecount -gt 0 ]
then
	for i in $file; do
		python /home/cowrie/cowrie/bin/playlog.py /home/cowrie/cowrie/var/lib/cowrie/tty/$i -m 1 > /home/cowrie/cowrie/var/lib/cowrie/played/$i
		mv /home/cowrie/cowrie/var/lib/cowrie/tty/$i /home/cowrie/cowrie/var/lib/cowrie/tty/old/
	done;
else
	exit
fi