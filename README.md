# JFDeviceComparison
JFDeviceComparison is a UIDevice category which is used to compare device versions. It uses the system machine information to determine and compare against device types.

##Purpose
The main purpose of this software is to provide developers with a simple way compare device versions.

##Installation
Install via CocoaPods
Add the following line to your .podfile

```
pod 'JFDeviceComparison'
```
##Support
####IOS
Earliest tested and supported build and deployment target - iOS 7.0.
Latest tested and supported build and deployment target - iOS 9.1.

##ARC Compatibility
JFDeviceComparison is built from ARC and is ARC-only compatible. 

##Usage
####Compare against current device
``` objective-c
        [UIDevice isCurrentDeviceGreaterOrEqualToVersion:kUIDeviceVersion_iPhone6];
```
####Compare against a specified device
``` objective-c
	[UIDevice isDeviceGreaterOrEqualToVersion:kUIDeviceVersion_iPhone3GS deviceName:kUIDeviceVersion_iPhone6];
```
