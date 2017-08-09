var models = require('../models');

module.exports = {
  messages: {
    get: function(req, res) {
      models.messages.get();
    }, // a function which handles a get request for all messages
    post: function(req, res) {
      console.log('Post Called');
      // req.on('data', function (data) {
      //   console.log(data);
      // });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function(req, res) {},
    post: function(req, res) {
      models.messages.post('Dave', function(output) {
        output();
      });
    }
  }
};
//models.messages.get();
