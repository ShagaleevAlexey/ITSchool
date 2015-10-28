//
//  MenuTableViewCell.m
//  ITSchool
//
//  Created by Alexey on 10/26/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import "MenuTableViewCell.h"

@implementation MenuTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (instancetype)init {
    if (self = [super init]) {
        
        [self setupWithAccessory:UITableViewCellAccessoryDisclosureIndicator Header:@"" Icon:nil];
    }
    
    return self;
}

- (instancetype)initWithHeader:(NSString *)header Icon:(UIImage *)icon {
    if (self = [super init]) {
        [self setupWithAccessory:UITableViewCellAccessoryDisclosureIndicator Header:header Icon:icon];
    }
    
    return self;
}

- (void)setupWithAccessory:(UITableViewCellAccessoryType)type Header:(NSString *)header Icon:(UIImage *)icon {
    self.accessoryType = type;
    self.header.text = header;
    [self.icon setImage:icon];
}

- (void)setupWithMenuData:(MenuItemData *)data AndAccessory:(UITableViewCellAccessoryType)type {
    self.accessoryType = type;
    self.header.text = data.header;
    [self.icon setImage:data.icon];
}

@end
