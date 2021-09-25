#!/bin/bash -x
for ((i=1; i<10; i++))
do
    array[i]=$((RANDOM%900+100))
done
length=${#array[@]}
for ((j=i+1; j<$length; j++))
do
      if [ ${array[]i} -le ${array[j]} ]
      then
         continue
      else
         a=${array[i]}
         array[i]=${array[j]}
         array[j]+$a
      fi
done
echo ${array[@]}
echo "2nd smallest number from array is:" ${array[2]}
echo "2nd largest number from array is:" ${array[8]}
