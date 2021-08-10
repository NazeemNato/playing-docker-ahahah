const express = require("express");
const cors = require("cors");

const app = express();
const PORT = process.env.PORT || 8000;

app.use(cors());

app.get("/", (req, res) => {
  return res.send("Hello World");
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running at port ${PORT}`);
});
