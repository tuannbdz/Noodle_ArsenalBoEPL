function render(req, res) {
  res.render("courses");
}

function renderCourseId(req, res) {
  res.render("courseById");
}
exports.render = render;

exports.renderCourseId = renderCourseId;
