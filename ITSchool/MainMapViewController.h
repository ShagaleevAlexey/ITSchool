//
//  MainMapViewController.h
//  ITSchool
//
//  Created by Alexey on 10/25/15.
//  Copyright © 2015 ShagaleevInc. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMaps;

@interface MainMapViewController : UIViewController <GMSMapViewDelegate>
@property (strong, nonatomic) IBOutlet GMSMapView *mapView;

@end
