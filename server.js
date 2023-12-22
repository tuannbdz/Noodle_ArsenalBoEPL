const path = require("path");
const mongoose = require("mongoose");
const app = require(path.join(__dirname, "app"));

require("dotenv").config();

const port = process.env.PORT || 3000;
const DB = process.env.DATABASE.replace(
  "<password>",
  process.env.DATABASE_PASSWORD
);

mongoose
  .connect(DB)
  .then((result) => console.log("Connected to DB"))
  .catch((err) => console.log(err));

app.listen(port, () =>
  console.log(`Server running at http://127.0.0.1:${port}`)
);
