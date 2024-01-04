const express = require("express");
const path = require("path");
const router = express.Router();

const upload = require(path.join(__dirname, "..", "utilities", "multerHandle"));
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "API_uploadController"
));
router.post("/", upload.single("file"), controller.uploadResponse);

module.exports = router;
