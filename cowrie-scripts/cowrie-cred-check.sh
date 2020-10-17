#!/bin/bash 

attempts=$(cat /home/cowrie/cowrie/log/kippo.log | grep 'login attempt' | wc -l); 
echo "" 
echo $attempts" => login attempts" 
echo "--------------------"  
cat /home/cowrie/cowrie/log/kippo.log | grep 'login attempt' | cut -d " " -f 3 4 5 | awk '{print "["$1" "$4}'
echo "--------------------" 
echo ""  