const express = require("express");
const path = require("path");
const multer = require("multer");
const router = express.Router();

// Configure multer for file storage
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'materials/course_id'); // Set the destination folder for uploaded files
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + '-' + file.originalname); // Rename the file
    }
});

const upload = multer({ storage: storage });

// Route for file upload
router.post('/', upload.single('file'), (req, res) => {
    try {
        // File has been uploaded and saved at this point
        res.send('File uploaded successfully!');
    } catch (error) {
        res.status(500).send(error);
    }
});

module.exports = router;
