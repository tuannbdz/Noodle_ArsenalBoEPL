const fs = require("fs");
const path = require("path");

function checkFileExists(folder, filename) {
  const filePath = path.join(__dirname, "..", "materials", folder, filename);
  return fs.existsSync(filePath);
}

function getDirectoryFiles(folder) {
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
}
function getFileName(folder, originalName) {
  var filename = originalName;
  var counter = 1;
  var fileExt = path.extname(originalName);
  var basename = path.basename(originalName, fileExt);

  while (checkFileExists(folder, filename)) {
    filename = basename + `(${counter})` + fileExt;
    counter++;
  }
  return filename;
}
exports.checkFileExists = checkFileExists;
exports.getDirectoryFiles = getDirectoryFiles;
exports.getFileName = getFileName;
