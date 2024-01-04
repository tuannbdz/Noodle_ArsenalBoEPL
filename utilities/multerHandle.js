const path = require("path");
const multer = require("multer");
const fs = require("fs");
const { getFileName } = require(path.join(
  __dirname,
  "..",
  "utilities",
  "fileCheck"
));
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
    req.name = getFileName(req.dir, req.name);
    cb(null, req.name); // Rename the file
  },
});
module.exports = multer({ storage: storage });
