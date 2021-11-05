#!/bin/bash

avr-gcc -Os -Wall -mmcu=atmega328p -E main.c > preprocess.c
