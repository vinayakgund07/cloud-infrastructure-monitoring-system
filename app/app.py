from flask import Flask, render_template
import socket
import datetime
import platform

app = Flask(__name__)

@app.route("/")
def home():
    return render_template(
        "index.html",
        hostname=socket.gethostname(),
        time=datetime.datetime.now(),
        os=platform.system()
    )

@app.route("/health")
def health():
    return {
        "status": "UP",
        "application": "Cloud Infrastructure Monitoring System"
    }

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
