#! /bin/bash
switch=$(sudo -S <<< "lord125" cat /sys/class/leds/tpacpi::thinklight/brightness)

if [ $switch = 0 ]
then 
	sudo -S <<< "lord125" tee /sys/class/leds/tpacpi::thinklight/brightness <<< 1

else
	sudo -S <<< "lord125" tee /sys/class/leds/tpacpi::thinklight/brightness <<< 0
fi
