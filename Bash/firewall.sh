#!/bin/bash

## Purpose ##
## This script sets the iptables (firewall) rules for the Linux Honeypot. ##

# Interface: ens33

# Clears iptables rules
echo "Clearing rules"
iptables -F

# Show current rulres
echo "Current rules:"
iptables -L

# Drops all packets by default
echo "Dropping all packets by default"
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
iptables -P INPUT DROP

# Allows incoming packets that are marked RELATED or ESTABLISHED
echo "Allowing related or established packets"
iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT -m comment --comment "Allows incoming packets marked RELATED/ESTABLISHED"

# Allows outgoing packets from the root user
echo "Allowing outgoing packets from the root user"
iptables -A OUTPUT -m owner --uid-owner root -j ACCEPT -m comment --comment "Allows outgoing packets from root"

# Allows outgoing dns packets
echo "Allowing outgoing DNS packets"
iptables -A OUTPUT -p udp --dport 53 -m conntrack --ctstate NEW -j ACCEPT -m comment --comment "Allow outgoing DNS packets"

# Allows SSH packets
echo "Allowing SSH packets"
iptables -A INPUT -p tcp --dport 22 -m conntrack --ctstate NEW -j ACCEPT -m comment --comment "Allows incoming ssh packets"
iptables -A OUTPUT -p tcp --dport 22 -m conntrack --ctstate NEW -j ACCEPT -m comment --comment "Allows outgoing ssh packets"

# Accepts packets coming from or going to port 21 or 990 (FTP or FTP/SSL)
echo "Allowing FTP packets"
iptables -A INPUT -p ftp --dport 21 -m conntrack --ctstate NEW -j ACCEPT -m comment --comment "Allow incoming FTP packets"
iptables -A OUTPUT -p ftp --dport 21 -m conntrack --ctstate NEW -j ACCEPT -m comment --comment "Allow outgoing FTP packets"
echo "Allowing FTP/SSL packets"
iptables -A INPUT -p ftp --dport 990 -m conntrack --ctstate NEW -j ACCEPT -m comment --comment "Allow incoming FTP/SSL packets"
iptables -A OUTPUT -p ftp --dport 990 -m conntrack --ctstate NEW -j ACCEPT -m comment --comment "Allow outgoing FTP/SSL packets"

# SYN Flood Dam
echo "Attempting to dam SYN floods"
iptables -A INPUT -p tcp --syn -m limit --limit 3/s -j ACCEPT

# Save rules
echo "Saving rules"
tables-save > /etc/iptables/rules.v4
