const express = require("express");
const path = require("path");
const router = express.Router();
const Auth = require("./../middlewares/auth.js");
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "courseController"
));

router.route("/").get(Auth.isUser, controller.render);

router.route("/:id").get(Auth.isUser, controller.renderCourseId);

module.exports = router;
