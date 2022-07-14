#!/bin/bash
Service="apache2"
aaa=$(ps aux| grep "$Service"| grep root| awk '{print $2}')
bbb=$(ps aux| grep "$Service"| grep root| awk '{name=split($0,a," "); print a[name-2]}')
sudo kill -18 $aaa
for var in 5 10 15 20 25 30
do
sleep 5
echo "Process $bbb $aaa suspended"
done
sudo kill -19 $aaa
echo "Process resumed"

    



