const express = require("express");
const path = require("path");
const router = express.Router();
const verifyToken = require("./../middlewares/verifyToken");
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "homeController"
));

router.route("/").get(verifyToken, controller.render);

module.exports = router;
