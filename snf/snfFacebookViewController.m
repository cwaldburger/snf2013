//
//  snfFacebookViewController.m
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfFacebookViewController.h"

@interface snfFacebookViewController ()

@end

@implementation snfFacebookViewController

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
    // create url string
    NSString *urlAddress = @"http://www.facebook.com/SeenachtfestRapperswilJona";
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString: urlAddress];
    
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [_facebookWebView loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
