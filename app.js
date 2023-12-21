const path = require("path");
const express = require("express");
const mongoose = require("mongoose");
const Student = require("./models/studentModel");
const Admin = require("./models/adminModel");
const Lecturer = require("./models/lecturerModel");
const dotenv = require("dotenv");

dotenv.config();

const AppError = require(path.join(__dirname, "utilities", "AppError"));
const globalErrorHandler = require(path.join(
  __dirname,
  "controllers",
  "error"
));

const indexRouter = require(path.join(__dirname, "routes", "index"));
const homeRouter = require(path.join(__dirname, "routes", "homeRoutes"));
const authRouter = require(path.join(__dirname, "routes", "authRoutes"));
const usersRouter = require(path.join(__dirname, "routes", "usersRoutes"));
const courseRouter = require(path.join(__dirname, "routes", "courseRoutes"));
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, "public")));

// mongoose.connect(process.env.DB_CONNECT).then((result) => console.log('Connected to DB')).catch((err) => console.log(err));

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));

// Routes

app.use("/", indexRouter);
app.use("/home", homeRouter);
app.use("/course", courseRouter);
app.use("/api/auth", authRouter);
app.use("/api/users", usersRouter);

// app.get("/add-student", (req, res) => {
//   const student = new User({
//     id: "21127733",
//     firstName: "Le",
//     lastName: "Duong",
//     username: "duong",
//     password: "123",
//   });
//   student
//     .save()
//     .then((result) => {
//       res.send(result);
//     })
//     .catch((err) => {
//       console.log(err);
//     });
// });

// app.get("/add-admin", (req, res) => {
//   const admin = new Admin({
//     id: "1",
//     firstName: "admin",
//     lastName: "admin",
//     username: "admin",
//     password: "admin",
//   });
//   admin
//     .save()
//     .then((result) => {
//       res.send(result);
//     })
//     .catch((err) => {
//       console.log(err);
//     });
// });

// app.get("/add-lecturer", (req, res) => {
//   const lecturer = new Lecturer({
//     id: "123",
//     firstName: "Van",
//     lastName: "Chi Nam",
//     username: "vcnam",
//     password: "123",
//   });
//   lecturer
//     .save()
//     .then((result) => {
//       res.send(result);
//     })
//     .catch((err) => {
//       console.log(err);
//     });
// });

app.all("*", function (req, res, next) {
  next(new AppError(`Cannot find ${req.originalUrl} on this server!`, 404));
});

app.use(globalErrorHandler);

module.exports = app;
