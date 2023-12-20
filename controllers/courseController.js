function render(req, res) {
  res.render("courses");
}

function renderCourseId(req, res) {
  res.render("home");
}
exports.render = render;

exports.renderCourseId = renderCourseId;
