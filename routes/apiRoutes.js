const express = require("express");
const path = require("path");
const router = express.Router();
const authRouter = require(path.join(__dirname, ".", "authRoutes"));
const uploadRouter = require(path.join(__dirname, ".", "uploadRoutes"));
const auth = require(path.join(__dirname, "..", "middlewares", "auth"));

router.use("/auth", authRouter);
router.use("/upload", uploadRouter);

module.exports = router;
