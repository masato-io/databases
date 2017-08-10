var db = require('../db');

module.exports = {
  messages: {
    get: function(callback) {
      db.query(
        'SELECT m.id, m.text, m.roomname, u.username FROM messages AS m INNER JOIN users AS u ON (m.fkid_username = u.id) ORDER BY m.id',
        function(output) {
          callback(output);
        }
      );
    },
    post: function(params, callback) {
      console.log(params);
      // [ 'hi', 'user1', 'hackreactor' ]
      db.query(
        `INSERT INTO messages(text, fkid_username, roomname) VALUES (${params[0]}, (SELECT id FROM users WHERE username = ${params[1]} limit 1), ${params[2]});`,
        // params,
        function(output) {
          callback(params, output);
        }
      );
    }
  },
  users: {
    get: function(callback) {
      db.query('SELECT * FROM users', output => {
        console.log(output);
        callback(output);
      });
    },
    post: function(params, callback) {
      db.query('INSERT into users (username) VALUES (?);', params, output => {
        callback(value, output);
      });
    }
  }
};
