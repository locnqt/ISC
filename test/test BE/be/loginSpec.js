var request = require("request");

var base_url = "http://localhost:1321/"

describe("Login api", function() {
    describe("POST /", function() {
        it("should returns status code 400", function(done) {
            request.post(base_url+"api/auth/token", {json: true},function(error, response, body) {
            //   console.log(response.statusCode);
              expect(response.statusCode >=400 && response.statusCode <500).toBeTruthy();
              done();
            });
        });
        it("should returns status code 401", function(done) {
            const data = {
                UserName: "admin",
	            PassWord: "123456"
            }
            request.post(base_url+"api/auth/token", {json: true, body: data},function(error, response, body) {
                expect(response.statusCode).toBe(401);
                done();
            });
        });
        it("should returns status code 200", function(done) {
            const data = {
                UserName: "admin",
	            PassWord: "admin"
            }
            request.post(base_url+"api/auth/token", {json: true, body: data},function(error, response, body) {
                expect(response.statusCode).toBe(200);

                let dataProperties = Object.keys(body).sort();
                let dataExpected = [
                    'id',
                    'userName',
                    'fullName',
                    'token'
                ].sort();
                expect(dataProperties).toEqual(dataExpected);
                //var checkbearer = body.token.split(' ');
                //expect(checkbearer[0]).toEqual("Bearer");
                
                expect(body.token).toMatch("Bearer");
                //expect(body.token.startsWith("Bearer")).toBeTruthy;
                done();
            });
        });
    });
});