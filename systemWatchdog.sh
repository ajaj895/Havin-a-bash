#!/bin/bash
# This is a simple system check specifically meant for a Raspberry Pi

# This checks to see if any input values have been added to the script
if [ $# -gt 0 ]
then

input=$1

else

input="nope"

fi

if [ $input == "-log" ]
then

date > testResults.txt
date
echo "Temperature of the SOC (System On Chip):" >> testResults.txt
echo "Temperature of the SOC (System On Chip):"
vcgencmd measure_temp >> testResults.txt
vcgencmd measure_temp # Measures SOC temp.
echo "Voltage of the core:" >> testResults.txt
echo "Voltage of the core:"
vcgencmd measure_volts >> testResults.txt
vcgencmd measure_volts # Measures SOC voltage.
echo "Memory for the ARM chip and GPU:" >> testResults.txt
echo "Memory for the ARM chip and GPU:" 
vcgencmd get_mem arm >> testResults.txt
vcgencmd get_mem gpu >> testResults.txt
vcgencmd get_mem arm
vcgencmd get_mem gpu
echo "Frequencies:" >> testResults.txt
echo "Frequencies:"

# This is the frequency check (checks frequency of stuff)
for src in arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi
do
echo -e "$src:\t$(vcgencmd measure_clock $src)" >> testResults.txt # > writes over >> appends
echo -e "$src:\t$(vcgencmd measure_clock $src)"
done

else

date
echo "Temperature of the SOC (System On Chip)"
vcgencmd measure_temp
echo "Voltage of the core:"
vcgencmd measure_volts
echo "Memory for the ARM chip and GPU"
vcgencmd get_mem arm
vcgencmd get_mem gpu
echo "Frequencies:"

for src in arm core h265 isp v3d uart pwm emmc pixel vec hdmi dpi
do
echo -e "$src:\t$(vcgencmd measure_clock $src)"
done

fi

