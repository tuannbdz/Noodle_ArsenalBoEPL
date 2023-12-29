const path = require("path");
const { checkFileExists } = require(path.join(
  __dirname,
  "..",
  "utilities",
  "fileCheck"
));

module.exports = (req, res, next) => {
  const username = req.user.username;
  const avatar_name = checkFileExists("avatar", username + "-avatar.png")
    ? username + "-avatar.png"
    : "default.svg";
  req.user.avatar = avatar_name;
  //   console.log(avatar_name);
  next();
};
