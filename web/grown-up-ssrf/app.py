from flask import Flask, redirect

app = Flask(__name__)

@app.route("/")
def main():
	return redirect("http://127.0.0.1:9009/flag")