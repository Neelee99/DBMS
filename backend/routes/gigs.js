const express = require('express');
const router = express.Router();
const db = require('../config/database');
const course = require('../models/Courses');

router.get('/',(req,res)=> 
course.findAll()
.then(gigs => {
    console.log(gigs);
    x = JSON.stringify(gigs)
    res.send(x)})
.catch(err=>console.log(err)));

module.exports = router;