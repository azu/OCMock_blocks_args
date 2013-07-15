//
//  ViewControllerTests.m
//  ViewControllerTests
//
//  Created by azu on 2013/07/15.
//  Copyright (c) 2013年 azu. All rights reserved.
//

#import "ViewControllerTests.h"
#import "OCMock.h"
#import "ViewController.h"

@implementation ViewControllerTests

- (void)setUp {
    [super setUp];

    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.

    [super tearDown];
}

- (void)testPresentViewController {
    ViewController *viewController = [[ViewController alloc] init];
    id mock = [OCMockObject partialMockForObject:viewController];
    [[mock expect] presentViewController:[OCMArg any] animated:NO completion:[OCMArg any]];
    // モーダル表示させる
    [viewController viewDidAppear:NO];

    STAssertNoThrow([mock verify], @"did not show modal.");
}
- (void)testOCMArgCopy {
    [[OCMArg any] copy];
}

@end
