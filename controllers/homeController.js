const path = require("path");
const Course = require(path.join(__dirname, "..", "models", "courseModel"));

async function render(req, res, next) {
  try {
    const username = req.user.username;
    const avatar_name = req.user.avatar;
    const fullName = req.user.fullName || req.user.role;
    const courses = await Course.find({});
    for (const course of courses) {
      const [classroom, id] = course.id.split("_");
      course.classroom = classroom;
      course.idClassroom = id;
    }
    if (req.user.role === "student" || req.user.role === "lecturer") {
      res.render("home", {
        role: req.user.role,
        courses: courses,
        fullName: fullName,
        username: username,
        avatar: avatar_name,
      });
    } else if (req.user.role === "admin") {
      const activeSection = req.query.activeSection;
      if (activeSection)
        return res.render("homeAdmin", {
          activeSection: activeSection,
          role: req.user.role,
          fullName: fullName,
          username: username,
          avatar: avatar_name,
        });
      res.render("homeAdmin", {
        activeSection: "manually",
        role: req.user.role,
        fullName: fullName,
        username: username,
        avatar: avatar_name,
      });
    }
  } catch (error) {
    next(error);
  }
}

exports.render = render;
