const Sequelize = require('sequelize');

module.exports = new Sequelize('appli','root','root',{
    host:'localhost',
    dialect:'mariadb',
    operatorsAliases:false,
    pool:{
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    },
})



