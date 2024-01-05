function render(req, res, next) {
  try {
    res.render("index");
  } catch (error) {
    next(error);
  }
}

exports.render = render;
