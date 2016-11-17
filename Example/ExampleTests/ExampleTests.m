//
//  ExampleTests.m
//  ExampleTests
//
//  Created by WzxJiang on 16/11/17.
//  Copyright © 2016年 WzxJiang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+WZXSSL.h"

@interface ExampleTests : XCTestCase

@end

@implementation ExampleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    NSString * p = @"123456";
    NSString * p2 = [[p doBase64] doAES:@"key"];
    NSString * p3 = [[p2 decodeAES:@"key"] decodeBase64];
    NSLog(@"%@\n%@", p2, p3);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
