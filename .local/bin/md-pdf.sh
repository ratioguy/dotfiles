#!/bin/sh
echo 'What markdown file do you want to convert:'
read file
echo 'What filename should the output have:'
read name
pandoc --pdf-engine=pdfroff --toc-depth=1 $file -o $name.pdf
