const Sequelize = require('sequelize');
const db = require('../config/database')

const Courses = db.define("course" ,{
    c_id : {
        type:Sequelize.STRING
    },
    c_name :{
        type:Sequelize.STRING
    },
    c_credit:{
        type:Sequelize.INTEGER
    }
    

})

module.exports = Courses;
