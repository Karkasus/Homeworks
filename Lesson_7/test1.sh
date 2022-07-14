#!/bin/bash
Service="apache2"
ps aux| grep "$Service"| grep root| awk '{name=split($0,a," "); print a[2],a[name-2]}'