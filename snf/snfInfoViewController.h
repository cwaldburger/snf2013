//
//  snfInfoViewController.h
//  snf
//
//  Created by Cédric Waldburger on 7/18/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface snfInfoViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *infoTextView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *infoSegmentedControl;
- (IBAction)segmentValueChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *infoPicturesView;
@property (weak, nonatomic) IBOutlet UIScrollView *planScrollView;
@property (strong, nonatomic) IBOutlet UIWebView *ovWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *ovActivityIndicator;

//@property (strong, nonatomic) IBOutlet UIButton *call144Button;
//- (IBAction)call144:(id)sender;
//@property (strong, nonatomic) IBOutlet UIButton *call117Button;
//- (IBAction)call117:(id)sender;
//@property (strong, nonatomic) IBOutlet UIButton *call118Button;
//- (IBAction)call118:(id)sender;

@end
