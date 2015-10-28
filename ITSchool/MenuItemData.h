//
//  MenuItemData.h
//  ITSchool
//
//  Created by Alexey on 10/26/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuItemData : NSObject

@property (strong, nonatomic) UIViewController *viewController;
@property (strong, nonatomic) NSString *header;
@property (strong, nonatomic) UIImage *icon;

- (instancetype)initWithController:(UIViewController *)viewController Header:(NSString *)header Icon:(UIImage *)icon;

- (void)setupWithController:(UIViewController *)viewController Header:(NSString *)header Icon:(UIImage *)icon;

@end
