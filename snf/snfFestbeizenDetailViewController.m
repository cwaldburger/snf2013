//
//  snfFestbeizenDetailViewController.m
//  snf
//
//  Created by Cédric Waldburger on 7/17/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfFestbeizenDetailViewController.h"

#define METERS_PER_MILE 1609.344

@interface snfFestbeizenDetailViewController ()

@end

@implementation snfFestbeizenDetailViewController

@synthesize delegate, festbeizenMapView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)close:(id)sender
{
	[self.delegate snfFestbeizenDetailViewControllerDidClose:self];
}

- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 47.225;
    zoomLocation.longitude= 8.816;

    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.55*METERS_PER_MILE, 0.55*METERS_PER_MILE);
    
    // 3
    [festbeizenMapView setRegion:viewRegion animated:YES];
}

@end
