const fs = require("fs");
const path = require("path");

module.exports = {
  checkFileExists: function (folder, filename) {
    const filePath = path.join(__dirname, "..", "materials", folder, filename);
    return fs.existsSync(filePath);
  },

  getDirectoryFiles: function (folder) {
    const dir = path.join(__dirname, "..", "materials", folder);
    if (!fs.existsSync(dir)) {
      fs.mkdirSync(dir, { recursive: true });
      return {};
    }
    let results = {};

    fs.readdirSync(dir).forEach((item) => {
      const itemPath = path.join(dir, item);
      const stats = fs.statSync(itemPath);

      if (stats.isDirectory()) {
        results[item] = fs.readdirSync(itemPath).filter((file) => {
          return fs.statSync(path.join(itemPath, file)).isFile();
        });
      }
    });
    return results;
  },
  getFileName: function (folder, originalName) {
    var filename = originalName;
    var counter = 1;
    var fileExt = path.extname(originalName);
    var basename = path.basename(originalName, fileExt);

    while (checkFileExists(folder, filename)) {
      filename = basename + `(${counter})` + fileExt;
      counter++;
    }
    return filename;
  },
};
