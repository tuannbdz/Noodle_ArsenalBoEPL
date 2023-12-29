const express = require("express");
const bcrypt = require("bcryptjs");
const path = require("path");
const jwt = require("jsonwebtoken");
const router = express.Router();
const User = require("../models/userModel");
const { registerValidator, passwordValidator } = require(path.join(
  __dirname,
  "..",
  "utilities",
  "Validator"
));
const JWTAction = require(path.join(__dirname, "..", "utilities", "JWTAction"));
const passport = require(path.join(__dirname, "..", "utilities", "passport"));
const { authenticateForm } = require(path.join(
  __dirname,
  "..",
  "middlewares",
  "registerHandle"
));
router.post("/register", authenticateForm, async (request, response) => {
  const { error } = registerValidator({
    id: request.body.id,
    username: request.body.username,
    password: request.body.password,
  });

  if (error) return response.status(422).send(error.details[0].message);

  const checkExist = await User.findOne({ id: request.body.id });

  if (checkExist)
    return response.status(422).send("Account is exist, Invalid ID");

  const salt = await bcrypt.genSalt(10);
  const hashPassword = await bcrypt.hash(request.body.password, salt);

  const userAttribue = { ...request.body };
  userAttribue.password = hashPassword;

  const user = new User(userAttribue);

  try {
    const newUser = await user.save();
    response.send({
      status: "success",
      message: "Successfully!",
      data: newUser,
    });
  } catch (err) {
    response.status(400).send(err);
  }
});

router.post("/updatePassword", async function (req, res) {
  // console.log(req.user);
  // console.log(req.body);
  const { error } = passwordValidator({ password: req.body.newPass });
  if (error)
    return res.status(200).send({
      status: "fail",
      message:
        "password's length must be in range [6,20] without any special characters.",
    });
  const user = await User.findOne({ username: req.user.username });
  const checkPassword = await bcrypt.compare(req.body.curPass, user.password);
  if (!checkPassword)
    return res
      .status(200)
      .send({ status: "fail", message: "Current password is wrong" });
  const salt = await bcrypt.genSalt(10);
  const hashPassword = await bcrypt.hash(req.body.newPass, salt);
  const updateUser = await User.updateOne(
    { _id: user._id },
    { $set: { password: hashPassword } }
  );
  return res
    .status(200)
    .send({ status: "success", message: "change pass successfully!" });
});

// router.post("/login", async (request, response) => {
//   const user = await User.findOne({ username: request.body.username });
//   if (!user) return response.status(200).send("fail");

//   const checkPassword = await bcrypt.compare(
//     request.body.password,
//     user.password
//   );

//   if (!checkPassword) return response.status(200).send("fail");
//   const token = jwt.sign({ _id: user._id }, process.env.TOKEN_SECRET, {
//     expiresIn: 60 * 60 * 24,
//   });
//   //   response.redirect("/home");
//   return response.status(200).send({
//     token,
//     user: {
//       _id: user._id,
//       firstName: user.firstName,
//       lastName: user.lastName,
//     },
//     message: "Login successfully",
//   });
// });

router.post("/login", function (req, res, next) {
  passport.authenticate("local", function (err, user) {
    if (err) {
      return next(err);
    }
    if (!user) {
      return res.status(200).send("fail");
    }
    req.logIn(user, function (err) {
      if (err) {
        return next(err);
      }
      delete user.password;
      const token = JWTAction.createJWT(user);

      return res.status(200).send({ token: token });
    });
  })(req, res, next);
});

router.get("/logout", function (req, res, next) {
  req.logout(function (err) {
    if (err) {
      return next(err);
    }
    return res.status(200).send({ status: "success" });
  });
});

module.exports = router;
