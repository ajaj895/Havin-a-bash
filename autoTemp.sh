#!/bin/bash
#This is an automated script to watch temperature of the SOC on a Raspberry PI
#This script only works on Raspberry Pi's
while [ true ] #don't forget the space between while and []
do
    clear
    vcgencmd measure_temp
	sleep 5
done


