const express = require("express");
const path = require("path");
const router = express.Router();
const verifyToken = require("../middlewares/verifyToken");
const Auth = require("./../middlewares/auth.js");
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "profileController"
));

router.route("/").get(Auth.isUser, controller.renderAccountSec);
router.route("/password").get(Auth.isUser, controller.renderPasswordSec);

module.exports = router;
