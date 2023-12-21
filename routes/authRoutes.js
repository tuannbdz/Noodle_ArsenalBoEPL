const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const router = express.Router();
const User = require("../models/userModel");
const { registerValidator } = require("../auth");

router.post("/register", async (request, response) => {
  const { error } = registerValidator(request.body);

  if (error) return response.status(422).send(error.details[0].message);

  const checkExist = await User.findOne({ username: request.body.username });

  if (checkExist) return response.status(422).send("Account is exist");

  const salt = await bcrypt.genSalt(10);
  const hashPassword = await bcrypt.hash(request.body.password, salt);

  const user = new User({
    id: request.body.id,
    firstName: request.body.firstName,
    lastName: request.body.lastName,
    username: request.body.username,
    password: hashPassword,
  });

  try {
    const newUser = await user.save();
    response.send(newUser);
  } catch (err) {
    response.status(400).send(err);
  }
});

router.post("/login", async (request, response) => {
  const user = await User.findOne({ username: request.body.username });
  if (!user)
    return response.status(422).send("Username or Password is not correct");

  const checkPassword = await bcrypt.compare(
    request.body.password,
    user.password
  );

  if (!checkPassword)
    return response.status(422).send("Username or Password is not correct");
  const token = jwt.sign({ _id: user._id }, process.env.TOKEN_SECRET, {
    expiresIn: 60 * 60 * 24,
  });
  //   response.redirect("/home");
  return response.status(200).send({
    token,
    user: {
      _id: user._id,
      firstName: user.firstName,
      lastName: user.lastName,
    },
    message: "Login successfully",
  });
});

module.exports = router;
