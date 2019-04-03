#!/bin/bash
nums=$*
sum=0
for i in $nums
do
sum=`echo $i $sum|awk '{sum=$1+$2;print sum}'`
done
echo "Sum: " `echo $sum`
# `for i in $nums
#do
#echo $nums|awk '{sum=$sum+$i}{print sum}'
#done`
echo "Average: " `echo $sum $#|awk '{print $1/$2}'`
#echo $num1 $num2 $num3|awk '{print length()}'
#this might be a thing to look into to get the extra points
