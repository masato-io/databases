var db = require('../db');

module.exports = {
  messages: {
    get: function(cb) {
      // need joined query
      db('select * from message', function(output) {
        cb(output);
      });
    }, // a function which produces all the messages
    post: function(value, cb) {
      db('INSERT INTO message(text) VALUES(\'hi\');', function(output) {
        cb(value, output);
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function() {},
    post: function() {}
  }
};

//db('select * from message', function(output){console.log(output);});
