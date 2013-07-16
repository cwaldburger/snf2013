//
//  snfInfoViewController.h
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface snfInfoViewController : UIViewController
@property (strong, nonatomic) IBOutlet UINavigationBar *infoNavBar;
@property (strong, nonatomic) IBOutlet UISegmentedControl *infoSegmentedControl;
@property (strong, nonatomic) IBOutlet UIView *infoView;
@property (strong, nonatomic) IBOutlet UIView *planView;
@property (strong, nonatomic) IBOutlet UIView *ovView;
@property (strong, nonatomic) IBOutlet UIView *notfallView;
- (IBAction)segmentValueChanged:(id)sender;
@property (strong, nonatomic) IBOutlet UIWebView *ovWebView;
@property (strong, nonatomic) IBOutlet UIButton *call144Button;
- (IBAction)call144:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *jsonSummary;
@property (strong, nonatomic) IBOutlet UILabel *humanReadable;

@property (weak, nonatomic) IBOutlet UITextView *infoTextView;

@property (weak, nonatomic) IBOutlet UIImageView *planImageView;
@property (weak, nonatomic) IBOutlet UIScrollView *planScrollView;

@end
