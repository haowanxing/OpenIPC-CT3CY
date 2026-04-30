#!/bin/sh
# Pre-configure sensor PDN and RST GPIOs (SSC325 mhal crashes if done via VIF HAL)
echo 12 > /sys/class/gpio/export 2>/dev/null
echo 13 > /sys/class/gpio/export 2>/dev/null
echo out > /sys/class/gpio/gpio12/direction
echo out > /sys/class/gpio/gpio13/direction
echo 0 > /sys/class/gpio/gpio12/value   # PDN=LOW (power on)
echo 1 > /sys/class/gpio/gpio13/value   # RST=HIGH (released)
