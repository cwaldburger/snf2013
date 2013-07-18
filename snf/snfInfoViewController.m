//
//  snfInfoViewController.m
//  snf
//
//  Created by Cédric Waldburger on 7/18/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfInfoViewController.h"

@interface snfInfoViewController ()

@end

@implementation snfInfoViewController

@synthesize infoTextView, infoPicturesView, planScrollView;

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
    
    // Info Text
    NSString *path = [[NSBundle mainBundle] pathForResource:@"infoText" ofType:@"txt"];
    NSString *infoText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    infoTextView.text = infoText;
    
    // Load Plan
    
    
    
    //    // Load ZVV-Webview
    //    NSString *urlAddress = @"http://online.fahrplan.zvv.ch//bin/query.exe/dox";
    //    NSURL *url = [NSURL URLWithString: urlAddress];
    //    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //    [ovWebView loadRequest:requestObj];
    
    
    
    
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
  
            break;
//            plan
        case 1:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;
            
            break;
//            OV
        case 2:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;

            break;
//            Notfall
        case 3:
            self.infoPicturesView.hidden = YES;
            self.infoTextView.hidden = YES;

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
