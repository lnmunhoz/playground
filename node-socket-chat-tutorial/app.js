(function(){
  'use strict';
  
  var socket = io();

  $('#form-message').submit(function(e) {
    e.preventDefault();

    if (!$('#newMessage').val()) return;

    socket.emit('newMessage', $('#newMessage').val(), $('#room').val());

    $("#newMessage").val('');
  });

  $('#form-room').submit(function(e){
    e.preventDefault();

    if (!$('#room').val()) return;

    socket.emit('joinRoom', $('#room').val());  
  });

  socket.on('newMessage', function(newMessage){
    $('#messages').append($('<li>').text(newMessage));
  });




})();
