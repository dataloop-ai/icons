#!/bin/bash

for file in assets/*; do new=`echo $file | tr ' ' '-'` ; [ "$file" != "$new" ] && mv "$file" "$new" ; done
for file in assets/*.svg ; do new=${file//icon-dl-/} ; [ "$file" != "$new" ] && mv $file $new ; done
for file in assets/*.svg ; do new=${file//icon-di-/} ; [ "$file" != "$new" ] && mv $file $new ; done

echo 'Icon names cleaned'
