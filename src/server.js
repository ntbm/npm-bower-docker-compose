const express = require('express');

let app = express();
app.use('/static', express.static('bower_components'));

app.listen(3000, () => console.log(`Server running at http://0.0.0.0:3000`));