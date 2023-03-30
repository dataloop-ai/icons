#!/bin/bash

for file in assets/*; do mv "$file" `echo $file | tr ' ' '-'` ; done
for file in assets/*.svg ; do mv $file ${file//icon-dl-/} ; done
for file in assets/*.svg ; do mv $file ${file//icon-di-/} ; done

echo 'Icon names cleaned'
