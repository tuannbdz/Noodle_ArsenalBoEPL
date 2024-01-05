const passport = require("passport");
const bcrypt = require("bcrypt");
const LocalStrategy = require("passport-local").Strategy;
const path = require("path");
const User = require(path.join(__dirname, "..", "models", "userModel"));

passport.use(
  new LocalStrategy(async function (username, password, done) {
    try {
      const user = await User.findOne({ username: username });
      if (!user) {
        return done(null, false);
      }
      const match = await bcrypt.compare(password, user.password);
      if (!match) {
        return done(null, false);
      }
      done(null, {
        username: user.username,
        role: user.role,
        fullName: user.fullName,
      });
    } catch (error) {
      return done(error);
    }
  })
);

passport.serializeUser(function (user, done) {
  done(null, {
    username: user.username,
    role: user.role,
    fullName: user.fullName,
  });
});

passport.deserializeUser(function (user, done) {
  done(null, {
    username: user.username,
    role: user.role,
    fullName: user.fullName,
  });
});

module.exports = passport;
