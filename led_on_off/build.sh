#!/bin/bash

# debug mode
#avr-gcc -g -mmcu=atmega328p led.c -o led.elf && avr-objcopy -I elf32-avr -O ihex led.elf led.hex

avr-gcc -Os -mmcu=atmega328p led.c -o led.elf && avr-objcopy -I elf32-avr -O ihex led.elf led.hex
