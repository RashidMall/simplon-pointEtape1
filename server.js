const express = ('express');
const bodyParser = ('body-parser');

const url = 'myDataBase';

let app = express();

app.get('/', (req, res) => {
    res.render('index.html');
});

// Show document's description
app.get('/documents', (req, res) => {

})

app.listen(8080);