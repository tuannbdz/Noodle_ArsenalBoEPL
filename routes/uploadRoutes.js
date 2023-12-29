const express = require("express");
const path = require("path");
const multer = require("multer");
const router = express.Router();
const fs = require("fs");
// Configure multer for file storage
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    const uploadPath = `materials/${req.body.category}`;
    if (!fs.existsSync(uploadPath)) {
      fs.mkdirSync(uploadPath, { recursive: true });
    }
    cb(null, uploadPath); // Set the destination folder for uploaded files
  },
  filename: function (req, file, cb) {
    cb(null, req.user.username + "-" + file.originalname); // Rename the file
  },
});

const upload = multer({ storage: storage });

// Route for file upload
router.post(
  "/",
  (req, res, next) => {
    console.log(req.isAuthenticated());
    console.log(req.body);
    console.log(req.user);
    if (!req.body.category) {
      req.body.category = "others";
    }
    // if (req.body.category == "avatar") {
    //   next();
    // } else {
    //   return res.status(500).send("Error category");
    // }
    next();
  },
  upload.single("file"),
  (req, res) => {
    try {
      // File has been uploaded and saved at this point
      res.send("File uploaded successfully!");
    } catch (error) {
      res.status(500).send(error);
    }
  }
);

module.exports = router;
