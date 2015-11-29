//
//  JFRootViewController.m
//  JFDeviceComparison
//
//  Created by Jeremy Fuellert on 2015-11-29.
//  Copyright © 2015 Jeremy Fuellert. All rights reserved.
//

#import "JFRootViewController.h"
#import "UIDevice+JFDeviceComparison.h"

@interface JFRootViewController ()

@end

@implementation JFRootViewController

#pragma mark - Init
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBarHidden  = YES;
    
    NSLog(@"Is greater or equal to iPhone 6: %d", [UIDevice isCurrentDeviceGreaterOrEqualToVersion:kUIDeviceVersion_iPhone6]);
    NSLog(@"Is greater than iPhone 6: %d", [UIDevice isCurrentDeviceGreaterThanVersion:kUIDeviceVersion_iPhone6]);
    NSLog(@"Is less than or equal to iPhone 6: %d", [UIDevice isCurrentDeviceLessOrEqualToVersion:kUIDeviceVersion_iPhone6]);
    NSLog(@"Is less than iPhone 6: %d", [UIDevice isCurrentDeviceLessThanVersion:kUIDeviceVersion_iPhone6]);
    NSLog(@"Is equal to iPhone 6: %d", [UIDevice isCurrentDeviceEqualToVersion:kUIDeviceVersion_iPhone6]);
}

@end