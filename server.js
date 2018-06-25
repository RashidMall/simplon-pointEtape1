const express = require('express');
const bodyParser = require('body-parser');

const url = 'myDataBase';

let app = express();

app.get('/', (req, res) => {
    res.render('./index.html', {}); //pff
});

// Show document's description
app.get('/documents', (req, res) => {

})

app.use((req, res, next) => {
    res.redirect('/');
});

app.listen(8080);