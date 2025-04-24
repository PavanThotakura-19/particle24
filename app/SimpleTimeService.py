from flask import Flask, request, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    current_time = datetime.utcnow().isoformat() + 'Z'  # ISO 8601 format in UTC
    visitor_ip = request.headers.get('X-Forwarded-For', request.remote_addr)
    
    response = {
        "timestamp": current_time,
        "ip": visitor_ip
    }
    return jsonify(response)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)