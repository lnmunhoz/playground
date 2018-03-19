import bottle

@bottle.route('/')
def home_page():
	mythings = ['apple', 'orange', 'banana', 'peach']
	return bottle.template('hello_world',
							username = "Lucas",
							things = mythings)
	#same thing.
	#return bottle.template('hello_world', {
	#										'username' : "Lucas",
	#										'things' : mythings
	#									  })

bottle.debug(True)
bottle.run(host='localhost', port=8082)