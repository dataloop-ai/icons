#!/bin/bash

for file in docs/assets/*; do mv "$file" `echo $file | tr ' ' '-'` ; done
for file in docs/assets/*.svg ; do mv $file ${file//icon-dl-/} ; done
for file in docs/assets/*.svg ; do mv $file ${file//icon-di-/} ; done

echo 'Icon names cleaned'