var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);

app.use(express.static(__dirname));

app.get('/', function(req, res){
	res.sendFile(__dirname + '/index.html');
});

io.on('connection', function(socket){
	console.log('user connected');

	socket.on('disconnect', function(){
		console.log('user disconnected');
	});

	socket.on('newMessage', function(newMessage, room){

		// Send to the room
		if (room) {
			io.to(room).emit('newMessage', newMessage);

		// Send to everyone
	} else {
		io.emit('newMessage', newMessage);
	}
});

	socket.on('joinRoom', function(room){
		socket.join(room);
		io.to(room).emit('newMessage', 'Joined on room: ' + room);
	});
});

http.listen(3000, function(){
	console.log('listening on *:3000');
});