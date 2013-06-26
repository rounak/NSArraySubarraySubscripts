A category on NSArray that uses [Object Subscripting](http://nshipster.com/object-subscripting/) to provide convinient access to subarrays.

Example usage:

    NSArray *arr = [NSArray arrayWithObjects:@"Foo",@"Bar",@"Bob",@"Alice", nil];
    NSLog(@"%@",arr[@"1..3"]
