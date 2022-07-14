#!/bin/bash
Service="apache2"
aaa=$(ps aux| grep "$Service"| grep root| awk '{print $2}')
bbb=$(ps aux| grep "$Service"| grep root| awk '{name=split($0,a," "); print a[name-2]}')
sudo kill -17 $aaa
echo "Process $bbb $aaa stopped"
    



