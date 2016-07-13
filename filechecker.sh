#!/bin/bash

source vars/five9.yml
file="$filepath"
if [ -f "$file" ]
then
	mv -nv -- "$file" "$file.$(date +%Y%m%d)"
else
	echo "$file not found."
fi
