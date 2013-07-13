//
//  NSArraySubarrayTests.m
//  NSArraySubarrayTests
//
//  Created by Rounak Jain on 26/06/13.
//  Copyright (c) 2013 Rounak Jain. All rights reserved.
//

#import "NSArraySubarrayTests.h"


@implementation NSArraySubarrayTests

- (void)setUp
{
    [super setUp];
    _arr = [NSArray arrayWithObjects:@"Foo",@"Bar",@"Bob",@"Alice", nil];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    self.arr = nil;
    [super tearDown];
}

- (void)testNSArrayInitialisation
{
    STAssertNotNil(self.arr, @"NSArray+category shouldn't be nil");
}

- (void)testNSArraySubarrayWithSubscript
{
    NSArray *subarray = self.arr[@"1..3"];
    STAssertEqualObjects(subarray,[self.arr subarrayWithRange:NSMakeRange(1, 3)], @"Subarray with 1..3 should be Bar, Bob, Alice");
}
 - (void)testNSArrayInvalidRangeWithSingleIndex
{
    NSArray *subarray = self.arr[@"1"];
    STAssertNil(subarray, @"Invalid range should return a nil");
}
- (void)testNSArrayOutOfRange
{
    NSArray *subarray = self.arr[@"1..5"];
    STAssertEqualObjects(subarray, [self.arr subarrayWithRange:NSMakeRange(1, 3)], @"If end is outside length, then return from start position to end");
}
- (void)testNSArrayThreeNumbers
{
    NSArray *subarray = self.arr[@"1..2..3"];
    STAssertNil(subarray, @"Invalid range should return nil");
}
- (void)testNSArrayNonNumericSubscripts
{
    NSArray *subarray = self.arr[@"a..b"];
    STAssertNil(subarray, @"Non numeric ranges should return nil");
}
- (void)testNSArrayNonNumericWithNumberSubscripts
{
    NSArray *subarray = self.arr[@"1..b"];
    STAssertNil(subarray, @"Non numeric ranges should return nil");
}
-(void)testNSArrayForIndexTillEnd
{
    NSArray *subarray = self.arr[@"2..."];
    STAssertEqualObjects(subarray, [self.arr subarrayWithRange:NSMakeRange(2, 2)], @"Should return elements from the mentioned index till the end");
}
-(void)testNSArrayStartIndexOutOfBounds
{
    NSArray *subarray = self.arr[@"4..."];
    STAssertNil(subarray, @"Should return nil when start index is out of bounds");
}
-(void)testNSArrayStartRangeOutOfBounds
{
    NSArray *subarray = self.arr[@"4..6"];
    STAssertNil(subarray, @"Should return nil when start index of the range is out of bounds");
}

- (void)testNSArrayOutOfRangeStart
{
    NSArray *subarray = self.arr[@"5..9"];
    STAssertNil(subarray, @"accessing outside length should return nil");
}
- (void)testNSArrayEndPositionEqualToLength
{
    NSArray *subarray = self.arr[[NSString stringWithFormat:@"2..%ld",(unsigned long)self.arr.count]];
        STAssertEqualObjects(subarray, [self.arr subarrayWithRange:NSMakeRange(2, self.arr.count - 2)], @"If end is outside length, then return from start position to end");
}
@end
