#!/bin/bash

avr-objcopy -I elf32-avr -O ihex test.elf test.hex
