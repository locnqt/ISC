var request = require("request");

var base_url = "http://localhost:1321/api/"

describe("Item api", function() {
    describe("GET all item", function() {
        it("should returns 401", function(done) {
            request.get(base_url+"item",function(error, response, body) {
              expect(response.statusCode).toBe(401);
              done();
            });
        });
        it("should returns status code 401 (invalid token)", function(done) {
            const header = {
                Authorization: "abc"
            }
            request.get(base_url+"item", {headers: header},function(error, response, body) {
                expect(response.statusCode).toBe(401);
                done();
            });
        });
        it("should returns data", function(done) {
            const logindata = {
                UserName: "admin",
	            PassWord: "admin"
            }
            request.post(base_url+"auth/token", {json: true, body: logindata},function(error, response, body) {
                const header = {
                    Authorization: body.token
                }
                request.get(base_url+"item", {json: true,headers: header},function(err, res, bodyget) {
                    console.log(bodyget);
                    expect(Array.isArray(bodyget)).toBeTruthy();

                    if(bodyget.lenght > 0) {
                        let itemProperties = Object.keys(bodyget[0]).sort();
                        let itemExpected = [
                            'itemId',
                            'name',
                            'price',
                            'image',
                        ].sort();
                        expect(itemProperties).toEqual(itemExpected);
                    }
                    done();
                });
            });
        });
    });
});