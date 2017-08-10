var db = require('../db');

module.exports = {
  messages: {
    get: function(callback) {
      db.query(
        'select m.id, m.text, m.roomname, u.username from messages AS m INNER JOIN users AS u ON m.fkid_username = u.id',
        function(output) {
          callback(output);
        }
      );
    },
    post: function(value, callback) {
      db.query(
        'INSERT INTO messages(text, createdAt, fkid_username) VALUES(\'hi\', NOW(), 1);',
        function(output) {
          callback(value, output);
        }
      );
    }
  },
  users: {
    get: function(callback) {
      db.query('select * from users', output => {
        console.log(output);
        callback(output);
      });
    },
    post: function(params, callback) {
      db.query('INSERT into users (username) VALUES (?);', output => {
        callback(value, output);
      });
    }
  }
};
