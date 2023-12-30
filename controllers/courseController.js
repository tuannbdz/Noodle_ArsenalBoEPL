const path = require("path");
const Course = require(path.join(__dirname, "..", "models", "courseModel"));

function render(req, res) {
  res.render("courses", { avatar: req.user.avatar });
}

function renderCourseDetail(req, res) {
  if (req.user.role === "lecturer") {
    if (
      req.course.lecturers.length >= 1 &&
      req.course.lecturers.includes(req.user.username)
    ) {
      return res.render("detail1", {
        isLecturer: true,
        avatar: req.user.avatar,
        course: req.course,
      });
    }
  }
  return res.render("detail1", {
    isLecturer: false,
    avatar: req.user.avatar,
    course: req.course,
  });
}
exports.render = render;

exports.renderCourseDetail = renderCourseDetail;
