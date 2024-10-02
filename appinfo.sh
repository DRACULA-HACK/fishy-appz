#!/bin/bash

 # Install Python and Flask
 sudo apt-get update
 sudo apt-get install -y python3 python3-pip figlet pv
 pip3 install flask
# by master hack 
# by master hack 
clear
echo "by "
figlet MASTER-HACK 
echo -e " |||||||||||||||||||||||||||100% please wait "|pv -qL 1
sleep4
# Create the Flask app
cat << EOF > app.py
from flask import Flask, request
import requests

app = Flask(__name__)

@app.route('/')
def ip_logging():
    ip_address = request.remote_addr
    print(f"User IP: {ip_address}")

    # Make API call to ip-api to retrieve information about the IP address
    response = requests.get(f"http://ip-api.com/json/{ip_address}")

    # Check if the API call was successful
    if response.status_code == 200:
        ip_info = response.json()
        print("IP Address Information:")
        print("------------------------")
        print(f"Country: {ip_info['country']}")
        print(f"Region: {ip_info['region']}")
        print(f"City: {ip_info['city']}")
        print(f"ISP: {ip_info['isp']}")
        print(f"Organization: {ip_info['org']}")
        print(f"Latitude: {ip_info['lat']}")
        print(f"Longitude: {ip_info['lon']}")
        print(f"Timezone: {ip_info['timezone']}")
        print(f"Zip: {ip_info['zip']}")
    else:
        print("Failed to retrieve IP address information")

    return "Welcome!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
EOF

# Run the Flask app
python3 app.py
