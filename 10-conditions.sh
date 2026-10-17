#!/bin/bash

echo "Please enter the marks:"
read marks


if[$marks -lt 33];then

     echo "Fail"
else if [$marks -lt 50];then
     echo "Third class"

else if [$marks -lt 60];then
     echo "Second class"
else if [$marks -lt 75];then
     echo "Firstclass"
else 
echo "Distriction"
fi

echo "end"
