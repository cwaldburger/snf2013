//
//  snfFestbeizenDetailViewController.h
//  snf
//
//  Created by Cédric Waldburger on 7/17/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@class snfFestbeizenDetailViewController;

@protocol snfFestbeizenDetailViewControllerDelegate <NSObject>
- (void)snfFestbeizenDetailViewControllerDidClose: (snfFestbeizenDetailViewController *)controller;

@end

@interface snfFestbeizenDetailViewController : UIViewController

@property (nonatomic, weak) id <snfFestbeizenDetailViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet MKMapView *festbeizenMapView;

- (IBAction)close:(id)sender;

@end
