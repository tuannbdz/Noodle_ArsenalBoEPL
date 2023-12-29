const express = require("express");
const path = require("path");
const multer = require("multer");
const router = express.Router();
const fs = require("fs");
// Configure multer for file storage
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    const uploadPath = `materials/${req.query.category}`;
    if (!fs.existsSync(uploadPath)) {
      fs.mkdirSync(uploadPath, { recursive: true });
    }
    cb(null, uploadPath); // Set the destination folder for uploaded files
  },
  filename: function (req, file, cb) {
    cb(null, req.name); // Rename the file
  },
});

const upload = multer({ storage: storage });

// Route for file upload
router.post(
  "/",
  (req, res, next) => {
    if (!req.query.category) {
      req.query.category = "others";
    }

    if (req.query.category == "avatar") {
      req.extendName = "png";
    }
    req.name =
      req.query.username + "-" + req.query.category + "." + req.extendName;
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
