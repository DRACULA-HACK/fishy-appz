# fishy-appz 



---

▎fishy-appz

▎Overview

This repository contains three Bash scripts aimed at enhancing system monitoring and network analysis capabilities. Each script serves a specific function, from gathering application information to monitoring network traffic for potential security threats.

▎Scripts

▎1. appinfo.sh

Description:
appinfo.sh is a Bash script that sets up a Flask web application to log and retrieve information about the user's IP address. Upon running the script, it installs the necessary dependencies (Python and Flask), creates a simple Flask app, and starts a web server that listens for incoming requests.

Features:
- Installs Python 3 and Flask if not already present on the system.
- Logs the user's IP address when they access the root URL.
- Makes an API call to ip-api.com to fetch geolocation information based on the logged IP address.
- Displays relevant information such as country, region, city, ISP, organization, latitude, longitude, timezone, and zip code.

Usage:
To run the script, execute the following commands in your terminal:
chmod +x appinfo.sh  # Make the script executable
sudo ./appinfo.sh     # Run the script with root privileges

After running the script, access http://<your-server-ip>/ in your web browser to log your IP address and view geolocation information.

---

▎2. app.py

Description:
app.py is essentially the core Flask application created by appinfo.sh. It defines the routes and logic for logging IP addresses and fetching geolocation data using an API. This script can be run independently if needed.

Features:
- Logs the remote IP address of users accessing the root URL.
- Retrieves detailed information about the IP address using an external API.
- Prints out the information to the console for monitoring purposes.

Usage:
To run this script directly after setting up Flask, use:
python3 app.py

Ensure that Flask is installed and that you have permission to run a web server on port 80.

---

▎3. fishy.sh

Description:
fishy.sh is a network monitoring script designed to sniff network traffic and monitor for IP and MAC address spoofing attempts. It installs essential tools like ettercap and dsniff, configures them, and starts monitoring network traffic on a specified interface.

Features:
- Checks for root privileges before executing any commands.
- Installs necessary tools (ettercap, dsniff) if they are not already present.
- Configures ettercap for graphical or command-line usage.
- Monitors network traffic for potential spoofing attempts.
- Creates a malicious URL that simulates a phishing attack based on the current machine's IP and MAC address.
- Hosts a simple web server to serve the malicious URL.

Usage:
To run the script, execute the following commands in your terminal:
chmod +x fishy.sh     # Make the script executable
sudo ./fishy.sh       # Run the script with root privileges

Important Note: This script is intended for educational purposes only. Ensure you have permission to monitor or manipulate network traffic on any network you are using.

---

▎Installation

To use these scripts, clone this repository to your local machine:

`git clone https://github.com/DRACULA-HACK/fishy-appz`

`cd fishy-appz`


Make sure to change the permissions of the scripts before executing them.

▎Requirements

- Bash shell
- Root privileges
- Necessary packages (installable via apt-get)

▎Disclaimer

These scripts are provided for educational purposes only. Use them responsibly and ensure you have permission before running any network monitoring activities.

---

Feel free to customize any sections or add additional information specific to your project!
