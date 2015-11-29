//
//  JFDeviceComparisonTests.m
//  JFDeviceComparisonTests
//
//  Created by Jeremy Fuellert on 2015-11-29.
//  Copyright © 2015 Jeremy Fuellert. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIDevice+JFDeviceComparison.h"

@interface JFDeviceComparisonTests : XCTestCase

@property (nonatomic, copy) NSString *deviceName;
@property (nonatomic, copy) JFUIDeviceModelVersion *deviceVersion;

@end

@implementation JFDeviceComparisonTests

- (void)setUp {
    [super setUp];
    
    self.deviceName    = @"iPhone6,1"; //iPhone 5s
    self.deviceVersion = kUIDeviceVersion_iPhone5S;
}

- (void)testDeviceModelEqual {
    
    XCTAssertEqual([UIDevice isDeviceEqualToVersion:self.deviceVersion deviceName:self.deviceName], YES);
    XCTAssertEqual([UIDevice isDeviceEqualToVersion:kUIDeviceVersion_iPhone3GS deviceName:self.deviceName], NO);
}

- (void)testDeviceModelGreater {
    
    XCTAssertEqual([UIDevice isDeviceGreaterThanVersion:self.deviceVersion deviceName:self.deviceName], NO);
    XCTAssertEqual([UIDevice isDeviceGreaterThanVersion:kUIDeviceVersion_iPhone3GS deviceName:self.deviceName], YES);
    XCTAssertEqual([UIDevice isDeviceGreaterThanVersion:kUIDeviceVersion_iPhone6 deviceName:self.deviceName], NO);
}

- (void)testDeviceModelGreaterEqual {
    
    XCTAssertEqual([UIDevice isDeviceGreaterOrEqualToVersion:self.deviceVersion deviceName:self.deviceName], YES);
    XCTAssertEqual([UIDevice isDeviceGreaterOrEqualToVersion:kUIDeviceVersion_iPhone3GS deviceName:self.deviceName], YES);
    XCTAssertEqual([UIDevice isDeviceGreaterOrEqualToVersion:kUIDeviceVersion_iPhone6 deviceName:self.deviceName], NO);
}

- (void)testDeviceModelLesser {
    
    XCTAssertEqual([UIDevice isDeviceLessThanVersion:self.deviceVersion deviceName:self.deviceName], NO);
    XCTAssertEqual([UIDevice isDeviceLessThanVersion:kUIDeviceVersion_iPhone3G deviceName:self.deviceName], NO);
    XCTAssertEqual([UIDevice isDeviceLessThanVersion:kUIDeviceVersion_iPhone6 deviceName:self.deviceName], YES);
}

- (void)testDeviceModelLesserEqual {
    
    XCTAssertEqual([UIDevice isDeviceLessOrEqualToVersion:self.deviceVersion deviceName:self.deviceName], YES);
    XCTAssertEqual([UIDevice isDeviceLessOrEqualToVersion:kUIDeviceVersion_iPhone3G deviceName:self.deviceName], NO);
    XCTAssertEqual([UIDevice isDeviceLessOrEqualToVersion:kUIDeviceVersion_iPhone6 deviceName:self.deviceName], YES);
}


@end
