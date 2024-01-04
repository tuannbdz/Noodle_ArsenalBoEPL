const bcrypt = require("bcryptjs");
const path = require("path");

const User = require(path.join(__dirname, "..", "models", "userModel"));
const { registerValidator, passwordValidator } = require(path.join(
  __dirname,
  "..",
  "utilities",
  "Validator"
));
const JWTAction = require(path.join(__dirname, "..", "utilities", "JWTAction"));
const passport = require(path.join(__dirname, "..", "utilities", "passport"));

async function registerAccount(request, response) {
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
}

async function updatePassword(req, res) {
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
}

function loginAccount(req, res, next) {
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
}

function logoutAccount(req, res, next) {
  req.logout(function (err) {
    if (err) {
      return next(err);
    }
    return res.status(200).send({ status: "success" });
  });
}

exports.registerAccount = registerAccount;
exports.loginAccount = loginAccount;
exports.logoutAccount = logoutAccount;
exports.updatePassword = updatePassword;
