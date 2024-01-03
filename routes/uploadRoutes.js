const express = require("express");
const path = require("path");
const multer = require("multer");
const router = express.Router();
const fs = require("fs");
// Configure multer for file storage
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    const uploadPath = `materials/${req.dir}`;
    if (!fs.existsSync(uploadPath)) {
      fs.mkdirSync(uploadPath, { recursive: true });
    }
    cb(null, uploadPath); // Set the destination folder for uploaded files
  },
  filename: function (req, file, cb) {
    if (!req.name) {
      req.name = file.originalname;
    }
    var counter = 1;
    var fileExt = path.extname(req.name);
    var filename = path.basename(req.name, fileExt);
    while (fs.existsSync(`materials/${req.dir}/${req.name}`)) {
      req.name = filename + `(${counter})` + fileExt;
      counter++;
    }
    cb(null, req.name); // Rename the file
  },
});

const upload = multer({ storage: storage });

// Route for file upload
router.post(
  "/",
  (req, res, next) => {
    console.log(req.query);
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
  upload.single("file"),
  (req, res) => {
    try {
      // File has been uploaded and saved at this point
      res.send({ filename: req.name });
    } catch (error) {
      res.status(500).send(error);
    }
  }
);

module.exports = router;
