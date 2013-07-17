//
//  snfFestbeizenDetailViewController.h
//  snf
//
//  Created by Cédric Waldburger on 7/17/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import <UIKit/UIKit.h>

@class snfFestbeizenDetailViewController;

@protocol snfFestbeizenDetailViewControllerDelegate <NSObject>
- (void)snfFestbeizenDetailViewControllerDidClose: (snfFestbeizenDetailViewController *)controller;

@end

@interface snfFestbeizenDetailViewController : UIViewController

@property (nonatomic, weak) id <snfFestbeizenDetailViewControllerDelegate> delegate;

- (IBAction)close:(id)sender;

@end
