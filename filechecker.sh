#!/bin/bash

source vars/five9.yml
file="$filepath"
ext="$ext"
if [ -f "$file" ]
then
	mv -nv -- "$file" "$(date -r "$file" +"%Y%m%d_%H%M%S").+"$ext" "
else
	echo "$file not found."
fi
