const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const adminSchema = new Schema({
  id: {
    type: String,
    required: true,
    unique: true,
  },
  firstName: String,
  lastName: String,
  fullName: String,
  dob: Date,
  address: String,
  gender: { type: String, enum: ["Male", "Female"] },
  status: String,
  role: {
    type: String,
    enum: ["lecturer", "student", "admin"],
    default: "student",
  },
  gmail: String,
  year: String,
  username: { type: String, required: true, unique: true },
  password: { type: String, required: true },
});

const User = mongoose.model("User", adminSchema);
module.exports = User;
