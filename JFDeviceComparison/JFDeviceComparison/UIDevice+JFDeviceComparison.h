//
//  UIDevice+DeviceComparison.h
//  JFDeviceComparison
//
//  Created by Jeremy Fuellert on 2015-11-29.
//  Copyright © 2015 Jeremy Fuellert. All rights reserved.
//

@import UIKit;

typedef NSString JFUIDeviceModelVersion;

FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhoneGen1;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone3G;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone3GS;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone4;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone4S;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone5;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone5C;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone5S;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone6Plus;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone6;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone6S;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPhone6SPlus;

FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen1;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen2;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPadMini;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen3;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen4;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPadGen5;

FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen1;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen2;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen3;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen4;
FOUNDATION_EXPORT JFUIDeviceModelVersion *const kUIDeviceVersion_iPodGen6;

@interface UIDevice (JFDeviceComparison)

/** Returns the device name. For example, an iPhone 5s will return `iPhone6,1`. */
+ (JFUIDeviceModelVersion *)deviceName;

/** Returns whether a not the current device version is greater than or equal to a given version. */
+ (BOOL)isCurrentDeviceGreaterOrEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion;

/** Returns whether a not the current device version is greater than a given version. */
+ (BOOL)isCurrentDeviceGreaterThanVersion:(JFUIDeviceModelVersion *)deviceModelVersion;

/** Returns whether a not the current device version is less than or equal to a given version. */
+ (BOOL)isCurrentDeviceLessOrEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion;

/** Returns whether a not the current device version is less than a given version. */
+ (BOOL)isCurrentDeviceLessThanVersion:(JFUIDeviceModelVersion *)deviceModelVersion;

/** Returns whether a not the current device version is equal to a given version. */
+ (BOOL)isCurrentDeviceEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion;

/** Returns whether a not a device version is greater than or equal to a given version. */
+ (BOOL)isDeviceGreaterOrEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName;

/** Returns whether a not a device version is greater than a given version. */
+ (BOOL)isDeviceGreaterThanVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName;

/** Returns whether a not a device version is less than or equal to a given version. */
+ (BOOL)isDeviceLessOrEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName;

/** Returns whether a not a device version is less than a given version. */
+ (BOOL)isDeviceLessThanVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName;

/** Returns whether a not a device version is equal to a given version. */
+ (BOOL)isDeviceEqualToVersion:(JFUIDeviceModelVersion *)deviceModelVersion deviceName:(JFUIDeviceModelVersion *)deviceName;

@end
