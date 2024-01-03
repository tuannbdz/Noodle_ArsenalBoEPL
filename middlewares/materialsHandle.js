const { error } = require("console");
const path = require("path");
const { checkFileExists, getDirectoryFiles } = require(path.join(
  __dirname,
  "..",
  "utilities",
  "fileCheck"
));
const AppError = require(path.join(__dirname, "..", "utilities", "AppError"));
const Course = require(path.join(__dirname, "..", "models", "courseModel"));
module.exports = async (req, res, next) => {
  const course_id = req.params.id;
  //   console.log(course_id);
  const course = await Course.findOne({ id: course_id });
  //   console.log(course);
  if (!course) return next(new AppError(404, "Course Not Found!"));
  const materials = getDirectoryFiles(`courses/${course_id}`);
  //   console.log(materials);
  req.course = { ...course["_doc"] };
  req.course.materials = materials;
  const [classroom, id] = course_id.split("_");
  req.course.classroom = classroom;
  req.course.idClassroom = id;
  //   console.log(req.course);
  next();
};
