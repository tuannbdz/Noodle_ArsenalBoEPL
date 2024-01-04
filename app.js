const path = require("path");
const express = require("express");
const cors = require("cors");

const cookieParser = require("cookie-parser");
require("dotenv").config();

const JWTAction = require(path.join(__dirname, "utilities", "JWTAction"));

const passport = require(path.join(__dirname, "utilities", "passport"));
const AppError = require(path.join(__dirname, "utilities", "AppError"));
const globalErrorHandler = require(path.join(
  __dirname,
  "controllers",
  "error"
));

const indexRouter = require(path.join(__dirname, "routes", "indexRoutes"));
const homeRouter = require(path.join(__dirname, "routes", "homeRoutes"));
const apiRouter = require(path.join(__dirname, "routes", "apiRoutes"));
const courseRouter = require(path.join(__dirname, "routes", "courseRoutes"));
const profileRouter = require(path.join(__dirname, "routes", "profileRoutes"));
const app = express();

app.use(
  cors({
    origin: "http://127.0.0.1:3000",
  })
);
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(
  require("express-session")({
    secret: process.env.SECRET_KEY,
    resave: true,
    saveUninitialized: true,
  })
);
app.use(passport.initialize());
app.use(passport.session());

app.use(cookieParser());

app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, "public")));
app.use("/materials", express.static(path.join(__dirname, "materials")));
app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

// Routes

app.use((req, res, next) => {
  if (req.cookies["auth-token"]) {
    const token = req.cookies["auth-token"];
    const user = JWTAction.decodeJWT(token);
    req.login(user, (err) => {
      if (err) return next(err);
      else return next();
    });
  } else {
    return next();
  }
});

app.use("/", indexRouter);
app.use("/home", homeRouter);
app.use("/course", courseRouter);
app.use("/profile", profileRouter);
app.use("/api", apiRouter);

app.all("*", function (req, res, next) {
  next(new AppError(`Cannot find ${req.originalUrl} on this server!`, 404));
});

app.use(globalErrorHandler);

module.exports = app;
