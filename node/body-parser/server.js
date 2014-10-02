var express    = require('express'),
    bodyParser = require('body-parser'),
    app        = express();


/* body-parser é um middleware que lê
 * o input de um formulário e transforma
 * em um objeto javascript, acessado pelo
 * request.body ou req.body
 */

// Define que o bodyParser() será usado como
// middleware para todas as rotas
app.use(bodyParser());

app.get('/', function(req, res){

  // O form action aponta para '/' e o metodo possui
  // o tipo 'POST'

  var html = '<form action="/" method="post">' +
               'Enter your name: ' +
               '<input type="text" name="userName" />' +
               '<button type="submit">Submit</button>' +
             '</form>';
  
  res.send(html);
});

  
/* Essa rota recebe o form enviado,
 * e os dados sao acessados através
 * do req.body
 */

app.post('/', function(req, res){

  // Se o input não for preenchido, o valor passa
  // a ser Anonymous
  var userName = req.body.userName || 'Anonymous';

  var html = 'Hello: ' + userName + '<br>' +
             '<a href="/">Try again.</a>';

  res.send(html);
});

app.listen(8080);
console.log('Listening on port 8080');