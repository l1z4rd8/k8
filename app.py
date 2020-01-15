from flask import Flask
from flask_api import status
app = Flask(__name__)
@app.route('/')
def home():
   return "<h1>Welcome to my app</h1>", 200, {"X-Special": "Value"}

@app.route('/status/')
def empty_view(self):
    content = {''}
    return content, status.HTTP_204_NO_CONTENT
if __name__ == '__main__':
    app.run(debug=True)


