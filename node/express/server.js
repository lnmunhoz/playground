var express = require('express'),
    app     = express();

// Define que os arquivos estáticos
// do projeto estarão na pasta public
app.use(express.static(__dirname + '/public'));

// Inicia o servidor na porta 8080
app.listen(8080);
console.log('Listening on port 8080');