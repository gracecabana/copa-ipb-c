// Reguire modules
var express = require('express');
var http_auth = require('express-http-auth');

// Create app
var app = express();

// Require http auth
app.use(http_auth.realm('Copa - IPB C'));
app.use(function(req, res, next){
  if (req.username == 'copa' && req.password == '12345') {
    next();
  } else {
    res.sendStatus(403);
  }
});

// Serve static files as default
app.get('/*', express.static(__dirname + '/Copa_InfoPromoBoxC.framer'));

// Listen for both Heroku and local. Access locally as http://localhost:3333
app.listen(process.env.PORT || 3333);
