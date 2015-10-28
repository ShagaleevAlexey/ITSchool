//
//  MenuItemData.m
//  ITSchool
//
//  Created by Alexey on 10/26/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import "MenuItemData.h"

@implementation MenuItemData

- (instancetype)init {
    if (self = [super init]) {
        [self setupWithController:nil Header:@"" Icon:nil];
    }
    
    return self;
}

- (instancetype)initWithController:(UIViewController *)viewController Header:(NSString *)header Icon:(UIImage *)icon {
    if (self = [super init]) {
        [self setupWithController:viewController Header:header Icon:icon];
    }
    
    return self;
}

- (void)setupWithController:(UIViewController *)viewController Header:(NSString *)header Icon:(UIImage *)icon {
    self.viewController = viewController;
    self.header = header;
    self.icon = icon;
}

@end
