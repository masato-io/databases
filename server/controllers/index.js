var models = require('../models');

var headers = {
  'access-control-allow-origin': '*',
  'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
  'access-control-allow-headers': 'content-type, accept',
  'access-control-max-age': 10, // Seconds.
  'Content-Type': 'application/JSON'
};
var sendResponse = function(response, data, statusCode) {
  statusCode = statusCode || 200;
  response.writeHead(statusCode, headers);
  response.end(JSON.stringify(data));
};

module.exports = {
  messages: {
    get: function(req, res) {
      models.messages.get(function(output) {
        sendResponse(res, output);
      });
    }, // a function which handles a get request for all messages
    post: function(req, res) {
      // get data
      var data = '';
      req.on('data', function(chunk) {
        data += chunk;
      });
      req.on('end', function() {
        models.messages.post(data, function(output) {
          sendResponse(res, output);
        });
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function(req, res) {
      models.users.get(function(output) {
        sendResponse(res, output);
      });
    },
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
