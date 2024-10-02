#!/bin/bash

 # Install Python and Flask
 sudo apt-get update
 sudo apt-get install -y python3 python3-pip
 pip3 install flask

# Create the Flask app
cat << EOF > app.py
from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def ip_phishing():
    ip_address = request.remote_addr
    print(f"Target IP: {ip_address}")
    return "You've been phished!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
EOF

# Run the Flask app
python3 app.py
