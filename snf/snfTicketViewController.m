//
//  snfTicketViewController.m
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfTicketViewController.h"

@interface snfTicketViewController ()

@end

@implementation snfTicketViewController

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
    // create url string
    NSString *urlAddress = @"http://www.ticketcorner.ch/Tickets.html?affiliate=MSH&fun=search&action=search&doc=search&sort_by=score&sort_direction=desc&fuzzy=yes&detailadoc=erdetaila&detailbdoc=evdetailb&suchbegriff=seenachtfest";
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString: urlAddress];
    
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [_ticketsWebView loadRequest:requestObj];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
