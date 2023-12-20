const mongoose = require('mongoose');
const content = mongoose.Schema;

const contentSchema = new Schema({
    id: {
        type: String,
        required: true
    },
    courseID: String,
    materials: String
});

const Content = mongoose.model('Content', contentSchema);
module.exports = Content;