//
//  snfFestbeizenDetailViewController.m
//  snf
//
//  Created by Cédric Waldburger on 7/17/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfFestbeizenDetailViewController.h"
#import "FestbeizLocation.h"

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


// Add new method above refreshTapped
- (void)plotCrimePositions:(NSData *)responseData {
//    for (id<MKAnnotation> annotation in festbeizenMapView.annotations) {
//        [festbeizenMapView removeAnnotation:annotation];
//    }
    
//    NSDictionary *root = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:nil];
//    NSArray *data = [root objectForKey:@"data"];
    
//    for (NSArray *row in data) {
//        NSNumber * latitude = [[row objectAtIndex:22]objectAtIndex:1];
//        NSNumber * longitude = [[row objectAtIndex:22]objectAtIndex:2];
//        NSString * crimeDescription = [row objectAtIndex:18];
//        NSString * address = [row objectAtIndex:14];
//        
//        CLLocationCoordinate2D coordinate;
//        coordinate.latitude = latitude.doubleValue;
//        coordinate.longitude = longitude.doubleValue;
//        MyLocation *annotation = [[MyLocation alloc] initWithName:crimeDescription address:address coordinate:coordinate] ;
//        [_mapView addAnnotation:annotation];
//	}
    
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = 47.227048;
    coordinate.longitude = 8.814532;
    NSString * address = @"Haldenstrasse 13";
    FestbeizLocation *annotation = [[FestbeizLocation alloc] initWithName:@"Test" address:address coordinate:coordinate] ;
    [festbeizenMapView addAnnotation:annotation];
    
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
    
    // Add new line inside refreshTapped, in the setCompletionBlock, right after logging the response string
    [self plotCrimePositions:nil];
}


@end
