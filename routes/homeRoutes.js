const express = require("express");
const path = require("path");
const router = express.Router();
// const verifyToken = require("./../middlewares/verifyToken");
const Auth = require(path.join(__dirname, "..", "middlewares", "auth"));

const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "homeController"
));
const avatarHandle = require(path.join(
  __dirname,
  "..",
  "middlewares",
  "avatarHandle"
));
router.route("/").get(Auth.isUser, avatarHandle, controller.render);

module.exports = router;
