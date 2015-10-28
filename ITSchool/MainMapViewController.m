//
//  MainMapViewController.m
//  ITSchool
//
//  Created by Alexey on 10/25/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import "MainMapViewController.h"

@interface MainMapViewController ()

@end

@implementation MainMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Map View";
    
    self.mapView.myLocationEnabled = YES;
    self.mapView.mapType = kGMSTypeNormal;
    self.mapView.settings.compassButton = YES;
    self.mapView.settings.myLocationButton = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
