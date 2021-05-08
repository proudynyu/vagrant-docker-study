const express = require('express');
const path = require('path');

const app = express();

app.use(express.static('.'));

app.get('/', (req, res) => {
	return res.sendFile(path.join(__dirname, '/index.html'))
});


app.listen(8000, console.log('server is up in port 8000'));