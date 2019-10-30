const Sequelize = require('sequelize');
const db = require('../config/database')

const Student = db.define('student' ,{
    Name : {
        type:Sequelize.STRING
    },
    RegNo :{
        type:Sequelize.STRING
    },
    Password:{
        type:Sequelize.STRING
    }
    

},{
    tableName : 'student'
})

module.exports = Student;
