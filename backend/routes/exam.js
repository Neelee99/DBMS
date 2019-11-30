const express = require('express');
const router = express.Router();
const db = require('../config/database');
const course = require('../models/Exam');

router.get('/',(req,res)=> 
course.findAll()
.then(gigs => {
    console.log(gigs);
    res.sendStatus(200)})
.catch(err=>console.log(err)));

module.exports = router;