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
        
        [self setupWithAccessory:UITableViewCellAccessoryDisclosureIndicator AndHeader:@""];
    }
    
    return self;
}

- (instancetype)initWithHeader:(NSString *)header {
    if (self = [super init]) {
        [self setupWithAccessory:UITableViewCellAccessoryDisclosureIndicator AndHeader:header];
    }
    
    return self;
}

- (void)setupWithAccessory:(UITableViewCellAccessoryType)type AndHeader:(NSString *)header {
    self.accessoryType = type;
    self.Header.text = header;
}

@end
