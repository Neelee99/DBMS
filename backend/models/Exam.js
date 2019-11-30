const Sequelize = require('sequelize');
const db = require('../config/database')

const Exam = db.define("exam" ,{
    e_id : {
        type:Sequelize.STRING
    },
    e_name :{
        type:Sequelize.STRING
    },
    c_id:{
        type:Sequelize.STRING
    },
    e_syllabus:{
        type:Sequelize.STRING
    }

    

})

module.exports = Exam;
