from flask import Flask, status
app = Flask(__name__)
@app.route('/')
def home():
   return {'welcome': 'to': 'my': 'app'}

@app.route('/status/')
def empty_view(self):
    content = {''}
    return content, status.HTTP_204_NO_CONTENT
if __name__ == '__main__':
    app.run(debug=True)


