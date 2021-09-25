
#!/bin/bash -x
result=()
for(( i=0; i<=10; i++ ))
do 
   num=$(((RANDOM % 999)+100))
   result[$i]=$num
done
echo "array is:" ${result[@]}

max=${result[0]}
min=${result[0]}
for i in ${result[@]}
do
   if [[ $i -ge $max ]]
   then
      max="$i"
   fi

   if [[ $i -le $min ]]
   then
      min="$i"
   fi
done

echo "the maximum number is $max"
echo "the minimum number is $min"
