const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const studentSchema = new Schema({
    id: {
        type: String,
        required: true
    },
    firstName: String,
    lastName: String,
    dob: Date,
    address: String,
    gender: String,
    status: String,
    role: String,
    username: String,
    password: String
});

const Student = mongoose.model('Student', studentSchema);
module.exports = Student;