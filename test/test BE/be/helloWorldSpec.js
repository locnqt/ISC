var request = require("request");

var base_url = "http://localhost:1321/";

describe("Hello World Server", function() {
    describe("GET /", function() {
      it("returns status code 404", function(done) {
        request.get(base_url, function(error, response, body) {
          expect(response.statusCode).toBe(404);
          done();
        });
      });
  
    //   it("returns Hello World", function(done) {
    //     request.get(base_url, function(error, response, body) {
    //       expect(body).toBe("Hello World");
    //       done();
    //     });
    //   });
    });
  });