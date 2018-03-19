#exception handling

import sys

try:
	print (5 / 0)
except:
	print ("exception ," + str(sys.exc_info())) #or sys.exc_info()[0] print just the class exception

print ("but life goes on...")