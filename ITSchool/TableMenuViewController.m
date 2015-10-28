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
#import "MainMapViewController.h"

@interface TableMenuViewController ()

@end

@implementation TableMenuViewController {
    NSArray *dataMaps;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"Menu"];
    
    MainMapViewController *mainMap = [self.storyboard instantiateViewControllerWithIdentifier:@"MapFirst"];
    MenuItemData *itemData01 = [[MenuItemData alloc] initWithController:mainMap Header:@"Map First" Icon:[UIImage imageNamed:@"geo_icon"]];
    
    dataMaps = [NSArray arrayWithObjects:itemData01, nil];
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
    return dataMaps.count;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    MenuTableViewCell *menuCell = (MenuTableViewCell *)cell;
    MenuItemData *itemData = [dataMaps objectAtIndex:indexPath.item];
    
    [menuCell setupWithAccessory:UITableViewCellAccessoryDisclosureIndicator Header:itemData.header Icon:itemData.icon];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    MenuItemData *data = [dataMaps objectAtIndex:indexPath.item];
    
    if (data.viewController)
        [self.navigationController pushViewController:data.viewController animated:YES];
}

@end
