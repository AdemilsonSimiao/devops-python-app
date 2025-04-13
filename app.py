import os
from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello_world():
    return 'Hello, World! This is a simple Flask application.'

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port=port)
# This code creates a simple Flask web application that returns "Hello, World! This is a simple Flask application." when accessed at the root URL.