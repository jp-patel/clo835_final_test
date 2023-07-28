//Load express module with `require` directive
var express = require('express')
var app = express()


//Define request response in root URL (/)
app.get('/', function (req, res) {
  res.send('CLO835 Final Exam Given By: Jal Patel, 118-198-225, CLO835-NAA')
})


//Launch listening server on port 8080
app.listen(8080, function () {
  console.log('app listening on port 8080!')
})
