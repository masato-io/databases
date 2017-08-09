var db = require('../db');

module.exports = {
  messages: {
    get: function() {
      // db('select * from message', function(output){
      //   console.log(output);
      // });
    }, // a function which produces all the messages
    post: function() {} // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function() {},
    post: function(username, cb) {
      db('INSERT into username (name) VALUES (test)', cb(result));
    }
  }
};

//db('select * from message', function(output){console.log(output);});
