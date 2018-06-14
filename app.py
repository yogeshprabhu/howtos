import os
from flask import Flask
app = Flask(__name__)
@app.route("/")
def main():
    return "Welcome to gcp iCompute"
@app.route("/hello")
def hello():
    return "Hello Mr "

if __name__ == "__main__":

    app.run(host='0.0.0.0', port=int('8001'), debug=True,threaded=True, use_reloader=True)
