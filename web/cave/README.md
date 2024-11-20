# Cave Writeup
this challenge is closed and the site is now not accessable but its a site with bunch of chests and when you click on it it opens and you have to find the flag in those chests
with curl and the chest number we get outputs if the output contains Nothing we do not display.

```bash
#!/bin/bash

for i in {1..5000}; do
    curl -s -X "POST" "http://139.162.5.230:10094/chest-$i" | grep -v "Nothing" && echo " $i"
done	
```
with this script we get a flag output.png

![Output chest](https://github.com/ediree0/ctfmn/blob/main/cave/output.png)

```
HZU18{HUH_Y0U_G0T_A_HIDDEN_ITEM}
```
