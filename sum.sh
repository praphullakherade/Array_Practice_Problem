#!/bin/bash -x

read -p "Enter first num:"  n1
read -p "Enter second num:-" n2
read -p "Enter third num:" n3
i=1;
if(( ($n1 + $n2 + $n3) == 0 ))
then
result[(($i))]=$(($n1+$n2+$n3))
echo ${result[@]};
else
echo "Not equal to zero"
fi
