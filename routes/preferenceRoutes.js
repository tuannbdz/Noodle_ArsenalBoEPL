const express = require("express");
const path = require("path");
const router = express.Router();

const Auth = require(path.join(__dirname, "..", "middlewares", "auth"));
const avatarHandle = require(path.join(
  __dirname,
  "..",
  "middlewares",
  "avatarHandle"
));
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "preferenceController"
));

router.route("/").get(Auth.isUser, avatarHandle, controller.render);

module.exports = router;
