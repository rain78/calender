const mysql = require('mysql');  
const option = require("../config/db.config.js");

 const connection = mysql.createConnection(option);

 connection.connect((err) => {  
    if (err) {  
      console.error('Error connecting to database:', err);  
      return;  
    }  
    console.log('Connected to database successfully!');  
  });

  module.exports=connection