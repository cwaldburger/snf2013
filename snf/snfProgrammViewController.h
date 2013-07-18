//
//  snfProgrammViewController.h
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface snfProgrammViewController : UIViewController
@property (strong, nonatomic) IBOutlet UINavigationBar *programmNavBar;
@property (strong, nonatomic) IBOutlet UISegmentedControl *programmSegmentedControl;
@property (strong, nonatomic) IBOutlet UIView *freitagView;
@property (strong, nonatomic) IBOutlet UIView *samstagView;
@property (strong, nonatomic) IBOutlet UIView *sonntagView;
@property (strong, nonatomic) IBOutlet UIView *kinderView;
- (IBAction)segmentedControlChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *programmTitleLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *programmScrollView;

@end
