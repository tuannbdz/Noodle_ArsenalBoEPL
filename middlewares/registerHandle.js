const defaultPassword = "123456";

module.exports = {
  authenticateForm: function (req, res, next) {
    try {
      if (!req.body.role) {
        return res
          .status(200)
          .send({ status: "fail", message: "please select role" });
      }
      if (req.body.role == "student") {
        req.body.username = req.body.id;
        req.body.password = defaultPassword;
        req.body.fullName = req.body.name;
        delete req.body.name;
      } else if (req.body.role == "lecturer") {
        req.body.username = req.body.id;
        req.body.password = defaultPassword;
        req.body.fullName = req.body.name;
        delete req.body.name;
      } else if (req.body.role == "admin") {
        req.body.username = req.body.id;
        req.body.password = defaultPassword;
        req.body.fullName = req.body.name;
        delete req.body.name;
      }
      next();
    } catch (error) {
      return res.status(200).send({ status: "fail", message: error });
    }
  },
};
