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
    
    [self.mapView addObserver:self forKeyPath:@"myLocation" options:0 context:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    if ([keyPath isEqual:@"myLocation"]) {
        CLLocation *location = [object myLocation];
        
        [self.mapView animateToLocation:location.coordinate];
        
        if (self.mapView.camera.zoom < 10)
            [self.mapView animateToZoom:17];
    }
}

@end
