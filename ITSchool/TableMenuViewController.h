//
//  TableMenuViewController.h
//  ITSchool
//
//  Created by Alexey on 10/26/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableMenuViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
