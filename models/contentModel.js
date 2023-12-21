const mongoose = require("mongoose");
const content = mongoose.Schema;

const contentSchema = new Schema({
  id: {
    type: String,
    required: true,
    unique: true,
  },
  courseID: String,
  materials: { type: Array, default: [] },
});

const Content = mongoose.model("Content", contentSchema);
module.exports = Content;
