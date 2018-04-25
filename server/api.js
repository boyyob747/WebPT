 const express = require('express');
 const router = express.Router();
 const mysql = require('mysql');

 var con = mysql.createConnection({
     host:"localhost",
     user: "root",
     password : "",
     database : "ad01_db"
 });
 
 router.get('/show', function(req,res){
    con.connect(function(error){
        if (error) throw error;
        con.query("SELECT * FROM vocabularies", function (err, result, fields) {
            if (err) throw err;
            console.log(result);
          });
    })
 })
 
 module.exports = router; // for fix error Router.use() requires a middleware function but got a Object