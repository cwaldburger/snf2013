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
@property (nonatomic, weak) IBOutlet MKMapView *festbeizenMapView;
@property NSString *detailTitle;
@property NSString *detailDesc;
@property NSNumber *detailLat;
@property NSNumber *detailLong;

@property (weak, nonatomic) IBOutlet UILabel *festbeizTitle;
@property (weak, nonatomic) IBOutlet UILabel *festbeizDesc;


- (IBAction)close:(id)sender;

@end
