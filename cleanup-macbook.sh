#!/bin/bash

set -e 

SAVEIFS=$IFS
IFS=$(echo -en "\n")
echo "Removing desktop screenshots: "
for f in `rm -vf ${HOME}/Desktop/Screen\ Shot\ *.png`; do
	echo " ${f}" 
done 

echo "Cleaning Downloads folder: "
for ext in docx mp4 jpeg dmg deb html HEIC pdf zip; do
	for f in `rm -vf ${HOME}/Downloads/*.${ext}`; do
		echo " ${f}"
	done
done

echo "Done." 
IFS=$SAVEIFS
