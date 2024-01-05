function render(req, res, next) {
  try {
    const username = req.user.username;
    const avatar_name = req.user.avatar;
    const fullName = req.user.fullName || req.user.role;
    res.render("courses", {
      fullName: fullName,
      username: username,
      avatar: avatar_name,
    });
  } catch (error) {
    next(error);
  }
}

function renderCourseDetail(req, res, next) {
  try {
    const username = req.user.username;
    const avatar_name = req.user.avatar;
    const fullName = req.user.fullName || req.user.role;
    if (req.user.role === "lecturer") {
      if (
        req.course.lecturers.length >= 1 &&
        req.course.lecturers.includes(req.user.username)
      ) {
        return res.render("course_detail", {
          isLecturer: true,
          fullName: fullName,
          username: username,
          avatar: avatar_name,
          course: req.course,
        });
      }
    }
    return res.render("course_detail", {
      isLecturer: false,
      fullName: fullName,
      username: username,
      avatar: avatar_name,
      course: req.course,
    });
  } catch (error) {
    next(error);
  }
}
exports.render = render;

exports.renderCourseDetail = renderCourseDetail;
