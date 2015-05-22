# resignal

observe recurrent events

```javascript
var observer = resignal(3/*times*/, 60/*seconds*/);

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
