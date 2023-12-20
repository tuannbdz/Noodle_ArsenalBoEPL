const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const courseSchema = new Schema({
    id: {
        type: String,
        required: true
    },
    name: String,
    description: String,
    tag: String,
    lastUpdated: String,
    role: String,
    participants: String,
    lecturers: String
});

const Course = mongoose.model('Course', courseSchema);
module.exports = Course;