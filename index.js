const express = require("express");
require("dotenv").config();
const app = express();

app.get("/", (req, res) => {
  res.send('Hello Softbinator!');
});

const port = process.env.PORT || 3000;

app.listen(port, console.log("Listening on port " + process.env.PORT));
