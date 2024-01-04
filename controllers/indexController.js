function render(req, res, error) {
  try {
    res.render("index");
  } catch (error) {
    next(error);
  }
}

exports.render = render;
