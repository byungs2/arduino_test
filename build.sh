#!/bin/bash

#avr-gcc -Os -Wall -mmcu=atmega328p main.c -o test.elf
avr-gcc -O0 -Wall -mmcu=atmega328p main.c -o test.elf
