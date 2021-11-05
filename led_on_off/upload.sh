#!/bin/bash

sudo /home/fai/byunghun/arduino-1.8.16/hardware/tools/avr/bin/avrdude -C /home/fai/byunghun/arduino-1.8.16/hardware/tools/avr/etc/avrdude.conf -v -patmega328p -carduino -P/dev/ttyACM0 -b115200 -D -Uflash:w:led.hex:i

