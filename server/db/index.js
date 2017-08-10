var mysql = require('mysql');

// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".
var query = function(query, callback) {
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
    // console.log('The solution is: ', results);
    callback(results);
  });
  connection.end();
};

module.exports.query = query;

// INSERT INTO pet (name, owner) VALUES('toby', 'masato');
