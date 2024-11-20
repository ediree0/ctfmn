#!/bin/bash
grep -RoE "mazala{.*}" | cut -d ":" -f 2 | tail -1 > flag.txt
cat flag.txt | xsel -b