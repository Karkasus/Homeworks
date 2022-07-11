#!/bin/bash
wc -l usr_executables.txt
head usr_executables.txt | awk '{n=split($0,a,"/"); print a[n] }'
