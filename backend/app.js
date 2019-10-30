const express = require('express');
const exphbs = require('express-handlebars');
const bodyparser = require('body-parser');
const app = express();




const db = require('./config/database');



db.authenticate().then(()=>console.log('Database connected'))
.catch(err=> console.log('Error: '+err))




app.get('/',(req,res)=> res.send('INDEX'));

app.use('/student', require('./routes/gigs'));
const PORT = process.env.PORT || 5000;

app.listen(PORT, console.log(`Server running`));
