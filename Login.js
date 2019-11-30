const Sequelize = require('sequelize');
const db = require('../config/database')

const Login db.define("login",
{
    l_id:{
        type:Sequelize.INTEGER
    },
    s_regno:{
        type:Sequelize.STRING
    }
    password:{
     type:Sequelize.STRING
    }
    }
)