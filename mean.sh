#!/usr/bin/env bash

bb=1
count=0;
total=0;
for i in $(awk '{ print $1; }' file.txt)
     do 
       echo $(echo $count+$bb|bc) - $i
       total=$(echo $total+$i | bc)
       ((count++))
        echo $total
     done
echo "scale=2; $total / $count" | bc
