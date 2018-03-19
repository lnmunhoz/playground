import os
from flask import Flask
from flask import render_template

app = Flask(__name__)


@app.route('/')
@app.route('/index')
def index_page():
    return render_template('index.html')

@app.route('/hello')
@app.route('/hello/<name>')
@app.route('/hello/<name>/<color>')
def hello_page(name = None, color = 'black'):
    return render_template('hello.html', name = name, color = color)

@app.route('/about')
def about_page():
    return render_template('about.html')
    
if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
    app.run(host='0.0.0.0', port= port)
