#!/bin/bash
aircode=$1 #default airport code
if test $# -eq 0; then #-eq -ge -le -ne -gt -lt
echo "Enter an ICAO airport code(i.e KMQB)"
read aircode
fi
for i in $*
do
wget http://w1.weather.gov/xml/current_obs/$i.xml
cat $i.xml|awk '/<weather>|<temp_f>|<windchill_f>/{print $0}'|sed -E 's/<.*>\b(.*)\b<.*>/\1/g' 
rm $i.xml
done

#wget http://w1.weather.gov/xml/current_obs/KMQB.xml|cat
#rm KMQB.xml
#remove temp file
