'use strict';
const express = require('express');
const app     = express();
const bodyParser = require('body-parser')
const http    = require('http');
const massive = require('massive');
const connectionString = "postgres://jobstijl:@localhost/"

const massiveInstance = massive.connectSync({connectionString : connectionString})
app.set('db', massiveInstance);
const db = app.get('db');
/** bodyParser.urlencoded(options)
 * Parses the text as URL encoded data (which is how browsers tend to send form data from regular forms set to POST)
 * and exposes the resulting object (containing the keys and values) on req.body
 */
app.use(bodyParser.urlencoded({
    extended: true
}));

/**bodyParser.json(options)
 * Parses the text as JSON and exposes the resulting object on req.body.
 */
app.use(bodyParser.json());

app.get('/pokemons', function(req, res) {
  db.pokemon_go_kaggle.find([], (err,result)=>{res.json(result)});
});
app.put('/pokemons/:id?', function(req, res){
  console.log('req',req.body);
  db.pokemon_go_kaggle.save(req.body, (err, result)=>{
    console.log(err, result);
    if (err) { res.status(500).json({ success: false }); }
    else { res.json(result); }
  })
});
app.use(express.static('.'));

app.listen(1337);
