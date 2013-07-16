//
//  snfFacebookViewController.h
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface snfFacebookViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *facebookWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *facebookLoadingIndicator;

@end
