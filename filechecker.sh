#!/bin/bash
 
configfile="/home/filecheckrename/vars/five9.cfg"
source "$configfile"
file="$filepath"."$ext"
extension="$ext"
 
if [ -f "$file" ]
then
         mv -nv -- "$file" "$filepath"_"$(date -r "$file" +"%Y%m%d_%H%M").$extension"
         chown -R five9:five9 $reportpath
else
         echo $file "not found."
fi
