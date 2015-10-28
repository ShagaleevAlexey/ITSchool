//
//  TableMenuViewController.m
//  ITSchool
//
//  Created by Alexey on 10/26/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import "TableMenuViewController.h"
#import "MenuTableViewCell.h"
#import "MenuItemData.h"

@interface TableMenuViewController ()

@end

@implementation TableMenuViewController {
    NSArray *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MenuItemData *itemData01 = [[MenuItemData alloc] initWithController:nil Header:@"Menu Map"];
    
    data = [NSArray arrayWithObjects:itemData01, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = @"MenuCell";
    
    MenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (!cell) {
        cell = [[MenuTableViewCell alloc] init];
    }
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return data.count;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    MenuTableViewCell *menuCell = (MenuTableViewCell *)cell;
    MenuItemData *itemData = [data objectAtIndex:indexPath.item];
    
    [menuCell setupWithAccessory:UITableViewCellAccessoryDisclosureIndicator AndHeader:itemData.header];
}

@end
