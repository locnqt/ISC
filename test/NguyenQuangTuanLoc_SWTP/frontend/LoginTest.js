
describe('Login test', function() {
  var username = element(by.name('username'));
  var password = element(by.name('password'));
  var goButton = element(by.buttonText('Login'));

  function Login(a, b) {
    username.sendKeys(a);
    password.sendKeys(b);
    goButton.click();
  }

  beforeEach(function() {
    browser.get('http://localhost:4200/');
  });

  it('should have a title', function() {
    expect(browser.getTitle()).toEqual('FrontEndApi');
  });

  it('should read the name from an input name', function() {
    username.sendKeys('abc');
    expect(username.getAttribute('value')).toEqual('abc');
  });

  it('should read the password from an input password', function() {
    password.sendKeys('abc');
    expect(password.getAttribute('value')).toEqual('abc');
  });
  it('should Login and redirect to product page', function() {
    Login('username','password');
    goButton.click();
    expect(browser.driver.getCurrentUrl()).toMatch('http://localhost:4200/product');
  });
});