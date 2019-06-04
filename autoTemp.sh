#!/bin/bash
#This is an automated script to watch temperature of the SOC on a raspberry PI
while [ true ] #don't forget the space between while and []
do
	vcgencmd measure_temp
	sleep 5
done


