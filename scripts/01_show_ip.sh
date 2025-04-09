#!/bin/bash

echo "🔍 Network Interfaces and IP Addresses:"
echo "----------------------------------------"

ip -brief address | grep -v 'lo' | awk '{print "Interface: " $1 "\nIP Address: " $3 "\n"}'

