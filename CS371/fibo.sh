#!/bin/bash
f0=0
f1=1 #f1 and f0 are the seeds for the fibonacci sequence (Fn=Fn-1 + Fn-2)
i=0
while [ $i -lt 15 ]
do
if [ $i -eq 0 ]
then
echo $f0
elif [ $i -eq 1 ]
then
echo $f1
else
temp=`echo $f0 $f1|awk '{sum=$1+$2}{print sum}'`
f0=$f1
f1=$temp
echo $temp
fi
((i++))
done
