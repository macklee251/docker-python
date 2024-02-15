from flask import Flask 
host, port = "localhost", 8080

app = Flask(__name__)

@app.route("/", methods=["GET"])
def hello():
    return "Hello World!"

app.run(host=host, port=port)