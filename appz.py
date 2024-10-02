from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def ip_logging():
    ip_address = request.remote_addr
    print(f"User IP: {ip_address}")
    return "Welcome!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
