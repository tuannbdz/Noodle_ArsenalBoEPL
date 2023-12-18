const path = require("path");
const express = require("express");

const AppError = require(path.join(__dirname, "utilities", "AppError"));
const globalErrorHandler = require(path.join(
  __dirname,
  "controllers",
  "error"
));

const indexRouter = require(path.join(__dirname, "routes", "index"));
const homeRouter = require(path.join(__dirname, "routes", "homeRoutes"));

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, "public")));

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

app.use("/", indexRouter);
app.use("/home", homeRouter);

app.all("*", function (req, res, next) {
  next(new AppError(`Cannot find ${req.originalUrl} on this server!`, 404));
});

app.use(globalErrorHandler);

module.exports = app;
