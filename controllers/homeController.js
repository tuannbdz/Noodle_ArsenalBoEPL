function render(req, res) {
  res.render("home", { avatar: req.user.avatar });
}

exports.render = render;
