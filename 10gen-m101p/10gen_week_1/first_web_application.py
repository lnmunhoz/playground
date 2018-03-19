#Bringing it all together
# [mongod] --Bson--> [Application] <--http--> [Web Page]

import bottle
import pymongo

#this is the handler for the default path of the web server

#creates a route for '/', wich means the default route of the web server
#when you go to a web server without any URL after the host name, this is what you get
@bottle.route('/')

#this is a decorator telling Python that the next function is going to be
#executed when the user hits that route
def index():

	#connect do mongoDB
	connection = pymongo.MongoClient('localhost', 27017)
	
	#connect to database
	db = connection.test
	
	#connect to collection
	names = db.names
	
	item = names.find_one()
	
	return '<h1> Hello %s!</h1>' % item['Name']
	
bottle.run(host = 'localhost', port = 8082)
	
