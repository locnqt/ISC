var request = require("request");

var base_url = "http://www.saigontech.edu.vn/restful-api/"

describe("Login test", function() {
    describe("POST /", function() {
        it("Missing field", function(done) {
            request.post(base_url+"login.php", {json: true},function(error, response, body) {
            expect(response.statusCode).toBe(200);
            let dataProperties = Object.keys(body).sort();
            let dataExpected = ['errorCode', 'errorMessage'].sort();
            expect(dataProperties).toEqual(dataExpected);
            expect(body.errorCode).toBe(1);
            expect(body.errorMessage).toEqual('Required field(s) is missing');
            done();
            });
        });
        it("Wrong username or password", function(done) {
            const data = {
                username: "admin",
	            password: "123"
            }
            request.post(base_url+"login.php", {json: true, body: data},function(error, response, body) {
            expect(response.statusCode).toBe(200);
            let dataProperties = Object.keys(body).sort();
            let dataExpected = ['errorCode', 'errorMessage'].sort();
            expect(dataProperties).toEqual(dataExpected);
            expect(body.errorCode).toBe(1);
            expect(body.errorMessage).toEqual('Wrong Username or Password');
            done();
            });
        });
        it("Correct username or password", function(done) {
            const data = {
                username: "admin",
	            password: "123456789"
            }
            request.post(base_url+"login.php", {json: true, body: data},function(error, response, body) {
            expect(response.statusCode).toBe(200);
            let dataProperties = Object.keys(body).sort();
            let dataExpected = [ 'data', 'errorCode' ].sort();
            let datachildProperties = Object.keys(body.data).sort();
            let datachildExpected = ["userId",
                                    "account",
                                    "fullName",
                                    "accessToken"
                                    ].sort();
            expect(dataProperties).toEqual(dataExpected);
            expect(datachildProperties).toEqual(datachildExpected);
            expect(body.errorCode).toBe(0);
            done();
            });
        });
    });
});