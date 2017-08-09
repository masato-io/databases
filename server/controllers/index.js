var models = require('../models');

var sendResponse = function(response, data, statusCode) {
  statusCode = statusCode || 200;
  response.writeHead(statusCode, headers);
  response.end(JSON.stringify(data));
};

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
      var data = '';
      req.on('data', function(chunk) {
        data += chunk;
      });
      req.on('end', function() {
        // models.messages.post(data, function(output) {
        //   sendResponse(res, output);
        // });
        models.messages.post('Dave', function(output) {
          sendResponse(res, output);
        });
      });
    }
  }
};
//models.messages.get();
