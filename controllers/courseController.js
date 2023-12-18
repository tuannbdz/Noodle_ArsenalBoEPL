function render(req, res) {
  res.render("course_screen");
}

function renderCourseId(req, res) {
  res.render("home");
}
exports.render = render;

exports.renderCourseId = renderCourseId;
