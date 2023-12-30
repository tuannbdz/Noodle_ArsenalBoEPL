const express = require("express");
const path = require("path");
const router = express.Router();
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "courseController"
));
const Auth = require(path.join(__dirname, "..", "middlewares", "auth"));
const avatarHandle = require(path.join(
  __dirname,
  "..",
  "middlewares",
  "avatarHandle"
));
const materialsHandle = require(path.join(
  __dirname,
  "..",
  "middlewares",
  "materialsHandle"
));

router.route("/").get(Auth.isUser, avatarHandle, controller.render);

router
  .route("/:id")
  .get(
    Auth.isUser,
    materialsHandle,
    avatarHandle,
    controller.renderCourseDetail
  );

module.exports = router;
