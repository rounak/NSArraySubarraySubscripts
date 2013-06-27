A category on NSArray that uses [Object Subscripting](http://nshipster.com/object-subscripting/) to provide convinient access to subarrays.

Example usage:
```objective-c
NSArray *arr = [NSArray arrayWithObjects:@"Foo", @"Bar", @"Bob", @"Alice", @"Bill", nil];
NSLog(@"%@",arr[@"1..3"])
```
