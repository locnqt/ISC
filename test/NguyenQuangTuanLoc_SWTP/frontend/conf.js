  exports.config = {
    framework: 'jasmine',
    seleniumAddress: 'http://localhost:4444/wd/hub',
    specs: ['LoginTest.js', 'ProductTest.js'],
    // capabilities: {
    //   browserName: 'firefox'
    // },
    // multiCapabilities: [{
    //   browserName: 'firefox'
    // }, {
    //   browserName: 'chrome'
    // }]
  }