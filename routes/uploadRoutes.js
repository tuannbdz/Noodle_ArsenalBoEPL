const express = require("express");
const path = require("path");
const router = express.Router();
const controller = require(path.join(
  __dirname,
  "..",
  "controllers",
  "API_uploadController"
));

const { setDirUpload } = require(path.join(
  __dirname,
  "..",
  "middlewares",
  "dirUploadHandle"
));
const { upload_avatar, upload_materials } = require(path.join(
  __dirname,
  "..",
  "utilities",
  "multerHandle"
));

router.post(
  "/avatar",
  setDirUpload,
  upload_avatar.single("file"),
  controller.uploadAvatarResponse
);

router.post(
  "/",
  setDirUpload,
  upload_materials.array("files[]"),
  controller.uploadMaterialsResponse
);

module.exports = router;
