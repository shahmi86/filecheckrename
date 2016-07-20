#!/bin/bash
 
filepath="/home/johndoe/reports/reportinfo.md"
ext="csv"
reportpath="/home/johndoe/reports"

file="$filepath"."$ext"
 
if [ -f "$file" ]
then
         mv -nv -- "$file" "$filepath"_"$(date -r "$file" +"%Y%m%d_%H%M").$ext"
         chown -R www:www $reportpath
else
         echo $file "not found."
fi
