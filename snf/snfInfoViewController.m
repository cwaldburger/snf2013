//
//  snfInfoViewController.m
//  snf
//
//  Created by Cédric Waldburger on 7/18/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfInfoViewController.h"
#import "FestbeizLocation.h"

#define METERS_PER_MILE 1609.344

@interface snfInfoViewController ()

@property (nonatomic, strong) UIImageView *planImageView;
- (void)centerScrollViewContents;

@end

@implementation snfInfoViewController

@synthesize infoTextView, infoPicturesView, planScrollView, ovWebView, ovActivityIndicator, call117Button, call118Button, call144Button, notfallMap;
@synthesize planImageView = _planImageView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)centerScrollViewContents {
    CGSize boundsSize = self.planScrollView.bounds.size;
    CGRect contentsFrame = self.planImageView.frame;
    
    if (contentsFrame.size.width < boundsSize.width) {
        contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0f;
    } else {
        contentsFrame.origin.x = 0.0f;
    }
    
    if (contentsFrame.size.height < boundsSize.height) {
        contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0f;
    } else {
        contentsFrame.origin.y = 0.0f;
    }
    
    self.planImageView.frame = contentsFrame;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    // Info Text
    NSString *path = [[NSBundle mainBundle] pathForResource:@"infoText" ofType:@"txt"];
    NSString *infoText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    // format string
    NSMutableAttributedString *infoString = [[NSMutableAttributedString alloc]
                                         initWithString: infoText];
    
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Light" size:15.0]
                       range:NSMakeRange(0,infoString.length)];
    
    [infoString addAttribute:NSFontAttributeName
                   value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                   range:NSMakeRange(896,9)];
    
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(1068,7)];
    
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(1320,13)];
    
    
//    label.attributedText = string;
    
    infoTextView.attributedText = infoString;
    
    // Load Plan
    self.planScrollView.contentSize = CGSizeMake(750, 697);
    self.planImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"festplan"]];
//    UIImageView *planImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"festplan"]];
    
    [self.planScrollView addSubview:_planImageView];
    
    // Load ZVV-Webview
    NSString *urlAddress = @"http://online.fahrplan.zvv.ch//bin/query.exe/dox";
    NSURL *url = [NSURL URLWithString: urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [ovWebView loadRequest:requestObj];
    
    // Set up the map
    // happens in viewWillAppear
    
    
    // show the info page
    self.infoPicturesView.hidden = NO;
    self.infoTextView.hidden = NO;
    self.planScrollView.hidden = YES;
    self.ovWebView.hidden = YES;
    self.ovActivityIndicator.hidden = YES;
    self.notfallView.hidden = YES;
    
    
}

// Add new method above refreshTapped
- (void)plotCrimePositions:(NSData *)responseData {
    
    // Bank Linth Platz, Merkurstrasse    47.225856,8.817789
    // Herrenberg Schloss   47.227131,8.81537
    // Container C2 HSR Areal 47.223392,8.816727
    // Infostand: bahnhofplatz 47.225365,8.816479
    
    CLLocationCoordinate2D coordinate1;
    coordinate1.latitude = 47.225856;
    coordinate1.longitude = 8.817789;
    NSString * address1 = @"Merkurstrasse";
    FestbeizLocation *annotation1 = [[FestbeizLocation alloc] initWithName:@"Bank Linth Platz" address:address1 coordinate:coordinate1] ;
    [notfallMap addAnnotation:annotation1];
    
    CLLocationCoordinate2D coordinate2;
    coordinate2.latitude = 47.227131;
    coordinate2.longitude = 8.81537;
    NSString * address2 = @"Herrenberg";
    FestbeizLocation *annotation2 = [[FestbeizLocation alloc] initWithName:@"Schloss" address:address2 coordinate:coordinate2] ;
    [notfallMap addAnnotation:annotation2];
    
    CLLocationCoordinate2D coordinate3;
    coordinate3.latitude = 47.223392;
    coordinate3.longitude = 8.816727;
    NSString * address3 = @"Container C2";
    FestbeizLocation *annotation3 = [[FestbeizLocation alloc] initWithName:@"HSR Areal" address:address3 coordinate:coordinate3] ;
    [notfallMap addAnnotation:annotation3];
    
    CLLocationCoordinate2D coordinate4;
    coordinate4.latitude = 47.225365;
    coordinate4.longitude = 8.816479;
    NSString * address4 = @"Bahnhofplatz";
    FestbeizLocation *annotation4 = [[FestbeizLocation alloc] initWithName:@"Info-Stand" address:address4 coordinate:coordinate4] ;
    [notfallMap addAnnotation:annotation4];
    
}

- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 47.225;
    zoomLocation.longitude= 8.816;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.55*METERS_PER_MILE, 0.55*METERS_PER_MILE);
    
    // 3
    [notfallMap setRegion:viewRegion animated:YES];
    
    // Add new line inside refreshTapped, in the setCompletionBlock, right after logging the response string
    [self plotCrimePositions:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)segmentValueChanged:(UISegmentedControl *)sender {

    switch (sender.selectedSegmentIndex) {
//            info
        case 0:
            self.infoPicturesView.hidden = NO;
            self.infoTextView.hidden = NO;
            self.planScrollView.hidden = YES;
            self.ovWebView.hidden = YES;
            self.ovActivityIndicator.hidden = YES;
            self.notfallView.hidden = YES;
            break;
//            plan
        case 1:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;
            self.planScrollView.hidden = NO;
            self.ovWebView.hidden = YES;
            self.ovActivityIndicator.hidden = YES;
            self.notfallView.hidden = YES;
            break;
//            OV
        case 2:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;
            self.planScrollView.hidden = YES;
            self.ovWebView.hidden = NO;
            self.ovActivityIndicator.hidden = NO;
            self.notfallView.hidden = YES;
            break;
//            Notfall
        case 3:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;
            self.planScrollView.hidden = YES;
            self.ovWebView.hidden = YES;
            self.ovActivityIndicator.hidden = YES;            
            self.notfallView.hidden = NO;
            break;


        default:
            break;
    }
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.ovActivityIndicator startAnimating];
    self.ovActivityIndicator.hidden = NO;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.ovActivityIndicator stopAnimating];
    self.ovActivityIndicator.hidden = YES;
}


- (IBAction)call144:(id)sender {
    UIDevice *device = [UIDevice currentDevice];
    if ([[device model] isEqualToString:@"iPhone"] ) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:144"]]];
    } else {
        UIAlertView *notpermitted=[[UIAlertView alloc] initWithTitle:@"Fehler" message:@"Ihr Gerät unterstützt keine Anrufe." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [notpermitted show];
    }
}

- (IBAction)call117:(id)sender {
    UIDevice *device = [UIDevice currentDevice];
    if ([[device model] isEqualToString:@"iPhone"] ) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:117"]]];
    } else {
        UIAlertView *notpermitted=[[UIAlertView alloc] initWithTitle:@"Fehler" message:@"Ihr Gerät unterstützt keine Anrufe." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [notpermitted show];
    }
}

- (IBAction)call118:(id)sender {
    UIDevice *device = [UIDevice currentDevice];
    if ([[device model] isEqualToString:@"iPhone"] ) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:118"]]];
    } else {
        UIAlertView *notpermitted=[[UIAlertView alloc] initWithTitle:@"Fehler" message:@"Ihr Gerät unterstützt keine Anrufe." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [notpermitted show];
    }
}


@end
