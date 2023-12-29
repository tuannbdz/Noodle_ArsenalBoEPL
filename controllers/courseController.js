function render(req, res) {
  res.render("courses", { avatar: req.user.avatar });
}

function renderCourseDetail(req, res) {
  res.render("_detail", { avatar: req.user.avatar });
}
exports.render = render;

exports.renderCourseDetail = renderCourseDetail;
