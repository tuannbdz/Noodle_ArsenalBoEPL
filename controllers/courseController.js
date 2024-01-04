function render(req, res, next) {
  try {
    res.render("courses", { avatar: req.user.avatar });
  } catch (error) {
    next(error);
  }
}

function renderCourseDetail(req, res, next) {
  try {
    if (req.user.role === "lecturer") {
      if (
        req.course.lecturers.length >= 1 &&
        req.course.lecturers.includes(req.user.username)
      ) {
        return res.render("course_detail", {
          isLecturer: true,
          avatar: req.user.avatar,
          course: req.course,
        });
      }
    }
    return res.render("course_detail", {
      isLecturer: false,
      avatar: req.user.avatar,
      course: req.course,
    });
  } catch (error) {
    next(error);
  }
}
exports.render = render;

exports.renderCourseDetail = renderCourseDetail;
