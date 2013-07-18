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
@property (weak, nonatomic) IBOutlet UITextView *programmTextView;

- (IBAction)segmentedControlChanged:(id)sender;




@end
