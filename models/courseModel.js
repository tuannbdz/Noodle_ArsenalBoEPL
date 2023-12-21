const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const courseSchema = new Schema({
  id: {
    type: String,
    required: true,
    unique: true,
  },
  name: { type: String, required: true },
  description: String,
  tag: { type: Array, default: [] },
  lastUpdated: Date,
  participants: { type: Array, default: [] },
  lecturers: { type: Array, default: [] },
});

const Course = mongoose.model("Course", courseSchema);
module.exports = Course;
