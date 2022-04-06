require('dotenv').config()
const express =  require('express')
const req = require('express/lib/request')
const connection = require('./utils/connection')
const usersRouter = require('./routes/players');
const app = express()
const port = process.env.PORT || 3000

app.use(express.json());
app.use('/players', playersRouter)

app.get("/", (req, res) => {
  res.send("Welcome to our server!");
});

app.listen(port, () => {
  console.log(`Web server is listening on port ${port}!`);
});
