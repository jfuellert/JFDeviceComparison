//
//  UIDevice+DeviceComparison.m
//  JFDeviceComparison
//
//  Created by Jeremy Fuellert on 2015-11-29.
//  Copyright © 2015 Jeremy Fuellert. All rights reserved.
//

#import "UIDevice+JFDeviceComparison.h"
#import <sys/utsname.h> 

NSString *const kUIDeviceVersion_iPhone                    = @"iPhone";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhoneGen1   = @"1,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone3G     = @"1,2";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone3GS    = @"2,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone4      = @"3,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone4S     = @"4,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone5      = @"5,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone5C     = @"5,3";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone5S     = @"6,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone6Plus  = @"7,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone6      = @"7,2";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone6S     = @"8,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone6SPlus = @"8,2";

NSString *const kUIDeviceVersion_iPod                   = @"iPod";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen1 = @"1,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen2 = @"2,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen3 = @"3,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen4 = @"4,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen6 = @"7,1";

NSString *const kUIDeviceVersion_iPad                   = @"iPad";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen1 = @"1,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen2 = @"2,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPadMini = @"2,5";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen3 = @"3,1";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen4 = @"3,4";
JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen5 = @"4,1";

@implementation UIDevice (JFDeviceComparison)

+ (BOOL)isCurrentDeviceGreaterOrEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion {
    return [[self class] isDeviceGreaterOrEqualToVersion:deviceModelVersion deviceName:[[self class] deviceName]];
}

+ (BOOL)isCurrentDeviceGreaterThanVersion:(JFUIDeviceModelVersion *)deviceModelVersion {
    return [[self class] isDeviceGreaterThanVersion:deviceModelVersion deviceName:[[self class] deviceName]];
}

+ (BOOL)isCurrentDeviceLessOrEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion {
    return [[self class] isDeviceLessOrEqualToVersion:deviceModelVersion deviceName:[[self class] deviceName]];
}

+ (BOOL)isCurrentDeviceLessThanVersion:(JFUIDeviceModelVersion *)deviceModelVersion {
    return [[self class] isDeviceLessThanVersion:deviceModelVersion deviceName:[[self class] deviceName]];
}

+ (BOOL)isCurrentDeviceEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion {
    return [[self class] isDeviceEqualToVersion:deviceModelVersion deviceName:[[self class] deviceName]];
}

+ (BOOL)isDeviceGreaterOrEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName {
    return [[self class] isCurrentDeviceVersionExpectedResultTrue:deviceModelVersion expectedResult:NSOrderedDescending equals:YES deviceName:deviceName];
}

+ (BOOL)isDeviceGreaterThanVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName {
    return [[self class] isCurrentDeviceVersionExpectedResultTrue:deviceModelVersion expectedResult:NSOrderedDescending equals:NO deviceName:deviceName];
}

+ (BOOL)isDeviceLessOrEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName {
    return [[[self class] class] isCurrentDeviceVersionExpectedResultTrue:deviceModelVersion expectedResult:NSOrderedAscending equals:YES deviceName:deviceName];
}

+ (BOOL)isDeviceLessThanVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName {
    return [[self class] isCurrentDeviceVersionExpectedResultTrue:deviceModelVersion expectedResult:NSOrderedAscending equals:NO deviceName:deviceName];
}

+ (BOOL)isDeviceEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName {
    return [[self class] isCurrentDeviceVersionExpectedResultTrue:deviceModelVersion expectedResult:NSOrderedSame equals:YES deviceName:deviceName];
}

+ (BOOL)isCurrentDeviceVersionExpectedResultTrue:(JFUIDeviceModelVersion *)deviceModelVersion expectedResult:(NSComparisonResult)expectedResult equals:(BOOL)equals deviceName:(JFUIDeviceModelVersion *)deviceName {
    
    deviceName = [[[deviceName stringByReplacingOccurrencesOfString:kUIDeviceVersion_iPhone withString:@""] stringByReplacingOccurrencesOfString:kUIDeviceVersion_iPad withString:@""] stringByReplacingOccurrencesOfString:kUIDeviceVersion_iPod withString:@""];
    
    NSComparisonResult result = [deviceName compare:deviceModelVersion];
    
    if(equals && result == NSOrderedSame) {
        return YES;
    }
    
    return result == expectedResult;
}

+ (JFUIDeviceModelVersion *)deviceName {
    
    struct utsname systemInfo;
    uname(&systemInfo);
    
    return [JFUIDeviceModelVersion stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

@end