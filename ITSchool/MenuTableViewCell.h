//
//  MenuTableViewCell.h
//  ITSchool
//
//  Created by Alexey on 10/26/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *Header;

- (void)setupWithAccessory:(UITableViewCellAccessoryType)type AndHeader:(NSString *)header;

@end
