var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".
var dbQuery = function(query, cb) {
  var connection = mysql.createConnection({
    user: 'root',
    password: '',
    database: 'chat'
  });
  connection.connect();
  connection.query(query, function(error, results, fields) {
    if (error) {
      throw error;
    }
    console.log('The solution is: ', results);
    cb(results);
  });
  connection.end();
};

module.exports = dbQuery;
