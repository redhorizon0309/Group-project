#!/bin/bash
ifconfig wlan0mon down
iw reg set US
ifconfig wlan0mon up
iwconfig wlan0mon
