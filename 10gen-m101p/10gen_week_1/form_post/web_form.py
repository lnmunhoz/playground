import bottle

@bottle.route('/')
def index():
	return bottle.template('index')

@bottle.post('/favourite_fruit')
def favourite_fruit():
	fruit = bottle.request.forms.get("fruit")
	if(fruit == None or fruit ==""):
		fruit ="No Fruit Selected"
	return bottle.template('fruit_selection', {'fruit' : fruit})

bottle.debug(True)
bottle.run(host = 'localhost', port=8082)
