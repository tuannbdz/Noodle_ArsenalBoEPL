function render(req, res, next) {
  try {
    const username = req.user.username;
    const avatar_name = req.user.avatar;
    const fullName = req.user.fullName || req.user.role;
    res.render("profile", {
      role: req.user.role,
      fullName: fullName,
      username: username,
      avatar: avatar_name,
    });
  } catch (error) {
    next(error);
  }
}

exports.render = render;
