import bottle

@bottle.route('/')
def index():
	return bottle.template('index')


@bottle.post('/user_info')
def user_info():
	name = bottle.request.forms.get("user-name")
	age = bottle.request.forms.get("user-age")
	if (name == None or name == "" or age == None or age == ""):
		return bottle.template('error')
	else:
		bottle.response.set_cookie("name" , name)
		bottle.response.set_cookie("age" , age)
		bottle.redirect("/show_info")

@bottle.route('/show_info')
def show_info():
	name = bottle.request.get_cookie("name")
	age = bottle.request.get_cookie("age")
	return bottle.template('user_info', {'name' : name, 
											'age': age})

bottle.debug(True)
bottle.run(host = 'localhost', port=8082)