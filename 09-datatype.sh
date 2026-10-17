#!/bin/bash

var1=10
var2=20

echo "$var1+$var2"
echo "$(($var1+$var2))"


declare -i COUNT=5 #I am declaring count as integer

COUNT=COUNT+1

echo "Count is : $COUNT"

FRUITS=("Apple" "Banana" "Pappaya")  # This is called as array 

echo "All fruits : ${FRUITS[@]}"