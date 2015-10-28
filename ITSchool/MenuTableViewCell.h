//
//  MenuTableViewCell.h
//  ITSchool
//
//  Created by Alexey on 10/26/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuItemData.h"

@interface MenuTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *header;
@property (strong, nonatomic) IBOutlet UIImageView *icon;

- (void)setupWithAccessory:(UITableViewCellAccessoryType)type Header:(NSString *)header Icon:(UIImage *)icon;

@end
