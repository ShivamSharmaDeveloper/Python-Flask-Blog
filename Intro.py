# Installing flask
# pip install flask
from flask import Flask
app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello World!"


@app.route("/harry")
def harry():
    return "Hello harry bhai4!"


# debug = True
# This is an argument which we can give in app.run(). We don't want to restart our app everytime we make changes so it is used to automatically restart the app.
app.run(debug=True)
