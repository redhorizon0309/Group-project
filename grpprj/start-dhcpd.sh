#!/bin/bash
ifconfig at0 10.0.0.1 up
dnsmasq -C dnsmasq.conf -d
