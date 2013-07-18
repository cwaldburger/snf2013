//
//  snfInfoViewController.m
//  snf
//
//  Created by Cédric Waldburger on 7/18/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfInfoViewController.h"

@interface snfInfoViewController ()

@property (nonatomic, strong) UIImageView *planImageView;
- (void)centerScrollViewContents;

@end

@implementation snfInfoViewController

@synthesize infoTextView, infoPicturesView, planScrollView, ovWebView;
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
    
    infoTextView.text = infoText;
    
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
    
    
    
    // show the info page
    self.infoPicturesView.hidden = NO;
    self.infoTextView.hidden = NO;
    self.planScrollView.hidden = YES;
    self.ovWebView.hidden = YES;
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self centerScrollViewContents];
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
            break;
//            plan
        case 1:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;
            self.planScrollView.hidden = NO;
            self.ovWebView.hidden = YES;
            break;
//            OV
        case 2:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;
            self.planScrollView.hidden = YES;
            self.ovWebView.hidden = NO;
            break;
//            Notfall
        case 3:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;
            self.planScrollView.hidden = YES;
            self.ovWebView.hidden = YES;            
            break;


        default:
            break;
    }
}


//- (IBAction)call144:(id)sender {
//    UIDevice *device = [UIDevice currentDevice];
//    if ([[device model] isEqualToString:@"iPhone"] ) {
//        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:144"]]];
//    } else {
//        UIAlertView *notpermitted=[[UIAlertView alloc] initWithTitle:@"Fehler" message:@"Ihr Gerät unterstützt keine Anrufe." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//        [notpermitted show];
//    }
//
////    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:144"]];
//}


@end
