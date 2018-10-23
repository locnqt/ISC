
describe('Product test', function() {
    var code = element(by.id('txtCode'));
    var name = element(by.id('txtName'));
    var unit = element(by.id('txtUnit'));
    var price = element(by.id('txtPrice'));
    var addbut = element(by.id('btnAdd'));
    var save = element(by.buttonText('Save changes'));
    var edit = element(by.className('fa fa-edit text-success pointer'));
    var del = element(by.className('fa fa-remove text-danger pointer'));
  
    function sendPro(a, b, c, d) {
        // addbut.click(); 
        code.sendKeys(a);
        name.sendKeys(b);
        unit.sendKeys(a);
        price.sendKeys(b);
        save.click();  
    }
  
    beforeEach(function() {
      browser.get('http://localhost:4200/product');
    });
  
    it('should have a title', function() {
      expect(browser.getTitle()).toEqual('FrontEndApi');
    });

    // it('should login before add product', function() {
    // });
  
    it('should read from inputs ', function() {
        code.sendKeys('abc');
        expect(code.getAttribute('value')).toEqual('abc');
        name.sendKeys('abc');
        expect(name.getAttribute('value')).toEqual('abc');
        unit.sendKeys('abc');
        expect(unit.getAttribute('value')).toEqual('abc');
        price.sendKeys(123);       
        expect(price.getAttribute('value')).toEqual('123');
    });

    it('should have a code', function() {
        addbut.click();       
        code.sendKeys('abc');       
        expect(code.getAttribute('value')).toEqual('abc');
    });

    it('should have a name', function() {
      addbut.click();
      name.sendKeys('abc');
      expect(name.getAttribute('value')).toEqual('abc');
    });

    it('should have a unit', function() {
        addbut.click();       
        unit.sendKeys('abc');       
        expect(unit.getAttribute('value')).toEqual('abc');
    });

    it('should have a price and price must be number', function() {
        addbut.click();       
        price.sendKeys(123);       
        expect(price.getAttribute('value')).toEqual('123');
    });

    it('should add new product', function() {
        addbut.click();   
        sendPro('abc','abc','xyz',123);
        // expect(price.getAttribute('value')).toEqual('123');
    });
    // it('should update product', function() {
    //     edit.click();   
    //     sendPro('abc','abc','xyz',123);    
    //     save.click();  
    // });
    // it('should delete product', function() {
    //     del.click();   
    // });
  });