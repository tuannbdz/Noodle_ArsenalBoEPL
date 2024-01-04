module.exports = {
  setDirUpload: function (req, res, next) {
    if (!req.query.category) {
      req.query.category = "others";
    }

    if (req.query.category == "avatar") {
      req.name = req.query.username + "-" + req.query.category + ".png";
    } else if (req.query.category == "courses") {
      const course_id = req.query.course_id;
      const collection = req.query.collection;
      req.dir = req.query.category + "/" + course_id + "/" + collection;
    }
    if (!req.dir) req.dir = req.query.category;

    next();
  },
};
