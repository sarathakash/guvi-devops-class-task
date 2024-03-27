#!/bin/bash

filename=samplefile.txt

sed '/welcome/ {5,$s/give/learning/g}' $filename > output.txt
cat output.txt
