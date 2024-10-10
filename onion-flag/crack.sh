#!/bin/bash

flagpass=""

for((i=36;i>0;i--));do
	zip2john "$i.zip" > "$i.hash"
	john "$i.hash"
	echo "password: "
	read -r pass
	echo "'$pass'"
	unzip -P "$pass" "$i.zip"
	flagpass="$flagpass$pass"
done
echo "flagpass : $flagpass"
