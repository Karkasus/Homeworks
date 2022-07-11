#!/bin/bash
lsof -a -p $$ -d 0,1,2 > part4.txt
