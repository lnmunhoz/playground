import pymongo
from pymongo import MongoClient

connection = MongoClient('localhost', 27017)
db = connection.test
names = db.names

a = names.find_one()
print("The current name is " + str(a['Name']))

newName = input("Enter the new name: ")
a['Name'] = newName
names.save(a)

b = names.find_one()
print ("The new name is " + str(b['Name']))