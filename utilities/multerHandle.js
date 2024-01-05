const path = require("path");
const multer = require("multer");
const fs = require("fs");
const { getFileName } = require(path.join(
  __dirname,
  "..",
  "utilities",
  "fileCheck"
));
const storage_avatar = multer.diskStorage({
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
    cb(null, req.name); // Rename the file
  },
});
const storage_materials = multer.diskStorage({
  destination: function (req, file, cb) {
    const uploadPath = `materials/${req.dir}`;
    if (!fs.existsSync(uploadPath)) {
      fs.mkdirSync(uploadPath, { recursive: true });
    }
    cb(null, uploadPath); // Set the destination folder for uploaded files
  },
  filename: function (req, file, cb) {
    let filename = getFileName(req.dir, file.originalname);
    cb(null, filename); // Rename the file
  },
});
const upload_avatar = multer({ storage: storage_avatar });
const upload_materials = multer({ storage: storage_materials });

exports.upload_avatar = upload_avatar;
exports.upload_materials = upload_materials;
