function render(req, res, next) {
  try {
    const username = req.user.username;
    const avatar_name = req.user.avatar;
    const fullName = req.user.fullName || req.user.role;
    if (req.user.role === "student" || req.user.role === "lecturer") {
      res.render("home", {
        fullName: fullName,
        username: username,
        avatar: avatar_name,
      });
    } else if (req.user.role === "admin") {
      const activeSection = req.query.activeSection;
      if (activeSection)
        return res.render("homeAdmin", {
          activeSection: activeSection,
          fullName: fullName,
          username: username,
          avatar: avatar_name,
        });
      res.render("homeAdmin", {
        activeSection: "manually",
        fullName: fullName,
        username: username,
        avatar: avatar_name,
      });
    }
  } catch (error) {
    next(error);
  }
}

exports.render = render;
