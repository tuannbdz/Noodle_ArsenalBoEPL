const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const adminSchema = new Schema({
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

const Admin = mongoose.model('Admin', adminSchema);
module.exports = Admin;