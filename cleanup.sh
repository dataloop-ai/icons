#!/bin/bash

for file in SVGS/*; do mv "$file" `echo $file | tr ' ' '-'` ; done
for file in SVGS/*.svg ; do mv $file ${file//icon-dl-/} ; done
for file in SVGS/*.svg ; do mv $file ${file//icon-di-/} ; done

echo 'Icon names cleaned'