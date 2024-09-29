#! /bin/bash

if [ $(ps -a | grep 'waybar') ]
then 
	sudo -S <<< "lord125" tee /sys/class/leds/tpacpi::thinklight/brightness <<< 1

else
	sudo -S <<< "lord125" tee /sys/class/leds/tpacpi::thinklight/brightness <<< 0
fi
