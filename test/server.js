const express = require("express");
const fs = require("fs");
const app = express();
const port = 3000;
app.use(express.static("public"));
app.get("/", (req, res) => {
    var index = fs.readFileSync('index.html')
  res.send(index);
});

app.listen(port, () =>
  console.log(`Example app listening at http://localhost:${port}`)
);
