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
        [self setupWithController:nil Header:@""];
    }
    
    return self;
}

- (instancetype)initWithController:(UIViewController *)viewController Header:(NSString *)header {
    if (self = [super init]) {
        [self setupWithController:viewController Header:header];
    }
    
    return self;
}

- (void)setupWithController:(UIViewController *)viewController Header:(NSString *)header {
    self.viewController = viewController;
    self.header = header;
}

@end
