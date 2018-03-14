//
//  SJ_FlickrTestTests.m
//  SJ_FlickrTestTests
//
//  Created by Surjit Joshi on 12/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SJ_FlickrTestTests : XCTestCase

@end

@implementation SJ_FlickrTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testDataTask
{
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    
    
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [NSURL URLWithString:@"http://www.apple.com"];
    NSURLSessionTask *task = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        XCTAssertNil(error, @"dataTaskWithURL error %@", error);
        
        if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
            NSInteger statusCode = [(NSHTTPURLResponse *) response statusCode];
            XCTAssertEqual(statusCode, 200, @"status code was not 200; was %ld", statusCode);
        }
        
        XCTAssert(data, @"data nil");
        
        // do additional tests on the contents of the `data` object here, if you want
        
        // when all done, signal the semaphore
        
        dispatch_semaphore_signal(semaphore);
    }];
    [task resume];
    
    long rc = dispatch_semaphore_wait(semaphore, dispatch_time(DISPATCH_TIME_NOW, 60.0 * NSEC_PER_SEC));
    XCTAssertEqual(rc, 0, @"network request timed out");
}

@end
