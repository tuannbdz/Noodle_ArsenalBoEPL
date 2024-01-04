function render(req, res, next) {
  try {
    res.render("home", { avatar: req.user.avatar });
  } catch (error) {
    next(error);
  }
}

exports.render = render;
