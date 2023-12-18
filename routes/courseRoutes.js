const express = require("express");
const path = require("path");
const router = express.Router();

const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "courseController"
));

router.route("/").get(controller.render);

router.route("/:id").get(controller.renderCourseId);

module.exports = router;
