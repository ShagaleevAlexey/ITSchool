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

- (instancetype)initWithController:(UIViewController *)viewController Header:(NSString *)header;

- (void)setupWithController:(UIViewController *)viewController Header:(NSString *)header;

@end
