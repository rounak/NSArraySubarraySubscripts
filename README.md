A category on NSArray that uses Object Subscripting to provide convinient access to subarrays.

Example usage:
```objective-c
NSArray *arr = [NSArray arrayWithObjects:@"Foo",@"Bar",@"Bob",@"Alice", nil];
NSLog(@"%@",arr[@"1..3"])
// will print (Bar, Bob, Alice)
```
More aboout object subscripting:
- [NSHipster](http://nshipster.com/object-subscripting/)
- [iOS Developer Tips](http://iosdevelopertips.com/objective-c/object-subscripting-in-objective-c.html)
