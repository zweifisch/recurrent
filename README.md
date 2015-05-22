# resignal

[![NPM Version][npm-image]][npm-url]
[![Build Status][travis-image]][travis-url]

observe recurrent events

```javascript
var observer = require('resignal')(3/*times*/, 60/*seconds*/);

observer.on("occured", function() {
    console.log("occoured");
});

observer.on("report", function() {
    console.log("occoured 3 times in 60 seconds")
});

observer.log()
observer.log()
observer.log()
observer.log()
```

output

```
occoured
occoured
occoured
occoured 3 times in 60 seconds
occoured
```

[npm-image]: https://img.shields.io/npm/v/resignal.svg?style=flat
[npm-url]: https://npmjs.org/package/resignal
[travis-image]: https://img.shields.io/travis/zweifisch/resignal.svg?style=flat
[travis-url]: https://travis-ci.org/zweifisch/resignal
