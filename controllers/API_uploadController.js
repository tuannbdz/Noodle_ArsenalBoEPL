function uploadAvatarResponse(req, res) {
  try {
    // File has been uploaded and saved at this point
    res.json({ filename: req.name });
  } catch (error) {
    res.status(500).send(error);
  }
}
function uploadMaterialsResponse(req, res) {
  try {
    // File has been uploaded and saved at this point
    const uploadedFileNames = req.files.map((file) => file.filename);
    res.json({ files: uploadedFileNames });
  } catch (error) {
    res.status(500).send(error);
  }
}

exports.uploadAvatarResponse = uploadAvatarResponse;
exports.uploadMaterialsResponse = uploadMaterialsResponse;
