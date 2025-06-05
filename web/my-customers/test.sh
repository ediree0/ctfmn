#!/bin/bash

for i in {0..100}; do
    curl http://139.162.5.230:10312/user/$i
done
