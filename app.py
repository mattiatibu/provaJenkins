from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

@app.route("/ita")
def ciao_mondo():
    return "<p>Ciao Mondo!</p>"

if __name__ == '__main__':
  app.run(debug=False, host='0.0.0.0')
