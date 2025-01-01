#!/bin/bash

#given number is greater than or not
#writing the if else condition to display the output

NUMBER=$1
if [$NUMBER -gt 100] 
    then
        echo "Given number is greater than 100: $NUMBER"
else
    echo "Given number is lesser than 100: $NUMBER"
fi
