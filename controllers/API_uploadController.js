function uploadResponse(req, res) {
  try {
    // File has been uploaded and saved at this point
    res.send({ filename: req.name });
  } catch (error) {
    res.status(500).send(error);
  }
}

exports.uploadResponse = uploadResponse;
