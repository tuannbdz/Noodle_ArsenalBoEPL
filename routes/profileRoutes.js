const express = require("express");
const path = require("path");
const router = express.Router();
const verifyToken = require("../middlewares/verifyToken");
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "profileController"
));

router.route("/").get(verifyToken, controller.renderAccountSec);
router.route("/password").get(verifyToken, controller.renderPasswordSec);

module.exports = router;
