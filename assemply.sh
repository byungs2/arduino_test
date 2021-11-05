#!/bin/bash

avr-gcc -Os -Wall -mmcu=atmega328p -S preprocess.c
