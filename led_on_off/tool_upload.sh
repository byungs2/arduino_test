#!/bin/bash

sudo ./bin/arduino-cli compile --fqbn arduino:avr:uno -u -p /dev/ttyACM0 sketch/
