const path = require("path");
const AppError = require(path.join(__dirname, "..", "utilities", "AppError"));
const Course = require(path.join(__dirname, "..", "models", "courseModel"));

async function render(req, res, next) {
  try {
    const username = req.user.username;
    const avatar_name = req.user.avatar;
    const fullName = req.user.fullName || req.user.role;
    var semester = req.query.semester || 1;
    const perPage = 4;
    const courses = await Course.find({});
    const numPages = courses.length;
    const startPage = (semester - 1) * perPage;
    const endPage = Math.min(startPage + perPage, numPages);
    const semester_courses = courses.slice(startPage, endPage);

    if (req.user.role === "student") {
      res.render("courses", {
        semester: semester,
        semester_courses: semester_courses,
        fullName: fullName,
        username: username,
        avatar: avatar_name,
        role: req.user.role,
      });
    } else {
      next(new AppError(404, "Access denied!"));
    }
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
          role: req.user.role,
        });
      }
    }
    return res.render("course_detail", {
      isLecturer: false,
      fullName: fullName,
      username: username,
      avatar: avatar_name,
      course: req.course,
      role: req.user.role,
    });
  } catch (error) {
    next(error);
  }
}
exports.render = render;

exports.renderCourseDetail = renderCourseDetail;
