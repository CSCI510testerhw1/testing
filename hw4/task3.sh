#!/bin/bash
cat titanic.csv | grep  '^[^,]*,[^,]*,2' | grep  -P 'S\r$' | sed 's/female/F/' | sed 's/male/M/' | grep -o  -E  '[MF],[0-9]+' | cut -d, -f2 | gawk '{sum+=$1;count++} END {print sum/count}'