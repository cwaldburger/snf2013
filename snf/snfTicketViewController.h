//
//  snfTicketViewController.h
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface snfTicketViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *ticketsWebView;
@property (strong, nonatomic) IBOutlet UINavigationBar *ticketsNavBar;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *ticketLoadingIndicator;

@end
