//
//  snfProgrammViewController.m
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfProgrammViewController.h"

@interface snfProgrammViewController ()

@end

@implementation snfProgrammViewController
@synthesize freitagView, samstagView, sonntagView, kinderView, programmSegmentedControl;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentedControlChanged:(UISegmentedControl *)sender {

    switch (sender.selectedSegmentIndex) {
            //            freitag
        case 0:
            self.freitagView.hidden = NO;
            self.samstagView.hidden = YES;
            self.sonntagView.hidden = YES;
            self.kinderView.hidden = YES;
            break;
            //            samstag
        case 1:
            self.freitagView.hidden = YES;
            self.samstagView.hidden = NO;
            self.sonntagView.hidden = YES;
            self.kinderView.hidden = YES;
            break;
            //            sonntag
        case 2:
            self.freitagView.hidden = YES;
            self.samstagView.hidden = YES;
            self.sonntagView.hidden = NO;
            self.kinderView.hidden = YES;
            break;
            //            kinder
        case 3:
            self.freitagView.hidden = YES;
            self.samstagView.hidden = YES;
            self.sonntagView.hidden = YES;
            self.kinderView.hidden = NO;
            break;
     
        default:
            break;
    }
}
@end
