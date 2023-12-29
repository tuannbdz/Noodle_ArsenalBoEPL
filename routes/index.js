const express = require("express");
const path = require("path");
const router = express.Router();

const controller = require(path.join(__dirname, "..", "controllers", "index"));
const Auth = require("./../middlewares/auth.js");
router.route("/").get(Auth.isNotUser, controller.render);

module.exports = router;
