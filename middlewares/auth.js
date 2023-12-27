module.exports = {
  isUser: function (req, res, next) {
    if (req.isAuthenticated()) {
      return next();
    }
    res.redirect("/");
  },
  isNotUser: function (req, res, next) {
    if (!req.isAuthenticated()) {
      return next();
    }
    res.redirect("/home");
  },

  isAdmin: function (req, res, next) {
    if (req.isAuthenticated() && req.user.role === "admin") {
      return next();
    }
    res.redirect("/");
  },

  isStudent: function (req, res, next) {
    if (req.isAuthenticated() && req.user.role === "student") {
      return next();
    }
    res.redirect("/");
  },

  isLecturer: function (req, res, next) {
    if (req.isAuthenticated() && req.user.role === "lecturer") {
      return next();
    }
    res.redirect("/");
  },
};
