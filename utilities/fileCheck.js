const fs = require("fs");
const path = require("path");

module.exports = {
  checkFileExists: function (folder, filename) {
    const filePath = path.join(__dirname, "..", "materials", folder, filename);
    return fs.existsSync(filePath);
  },
};
