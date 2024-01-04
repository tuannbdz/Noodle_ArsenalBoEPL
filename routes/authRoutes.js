const express = require("express");
const path = require("path");

const router = express.Router();
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "API_authController"
));

const { authenticateForm } = require(path.join(
  __dirname,
  "..",
  "middlewares",
  "registerHandle"
));

router.post("/register", authenticateForm, controller.registerAccount);

router.post("/updatePassword", controller.updatePassword);

router.post("/login", controller.loginAccount);

router.get("/logout", controller.logoutAccount);

module.exports = router;
