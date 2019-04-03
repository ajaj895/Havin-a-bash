#!/bin/bash
dictionary=`cat /usr/share/dict/american-english`
for i in $* #spell check multiple files
do
file=`cat $i`
for i in $file
do
temp=0
for e in $dictionary
do
if [ $i == $e ];
then
temp=1
break
fi
done
if [ $temp -eq 0 ];
then
echo $i 'is not in the dictionary'
fi
done
done
