const express = require('express');
const router = express.Router();
const db = require('../config/database');
const student = require('../models/Student');

router.get('/',(req,res)=> 
student.findAll()
.then(gigs => {
    console.log(gigs);
    res.sendStatus(200)})
.catch(err=>console.log(err)));

module.exports = router;