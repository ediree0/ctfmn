#!/bin/bash

for i in {1..5000}; do
    curl -s -X "POST" "http://139.162.5.230:10094/chest-$i" | grep -v "Nothing" && echo " $i"
done	
