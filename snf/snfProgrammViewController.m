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
@synthesize freitagView, samstagView, sonntagView, kinderView, programmSegmentedControl, programmTitleLabel; //, programmScrollView;

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

    [freitagView setBackgroundColor:[UIColor clearColor]];
    [samstagView setBackgroundColor:[UIColor clearColor]];
    [sonntagView setBackgroundColor:[UIColor clearColor]];
    [kinderView setBackgroundColor:[UIColor clearColor]];
    
    freitagView.hidden = YES;
    samstagView.hidden = YES;
    sonntagView.hidden = YES;
    kinderView.hidden = YES;
//    
//    [programmScrollView setScrollEnabled: YES];
//    [programmScrollView setContentSize: CGSizeMake(320, 800)];

    
    self.programmScrollView.contentSize = CGSizeMake(320, 800);
    self.programmScrollView.scrollEnabled = YES;
    UIImageView *programmImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"festplan.png"]];
    
    [self.programmScrollView addSubview: programmImageView];
    
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
//            self.freitagView.hidden = NO;
//            self.samstagView.hidden = YES;
//            self.sonntagView.hidden = YES;
//            self.kinderView.hidden = YES;
            self.programmTitleLabel.text = @"Freitag, 9. August 2013";
            break;
            //            samstag
        case 1:
//            self.freitagView.hidden = YES;
//            self.samstagView.hidden = NO;
//            self.sonntagView.hidden = YES;
//            self.kinderView.hidden = YES;
            self.programmTitleLabel.text = @"Samstag, 10. August 2013";
            break;
            //            sonntag
        case 2:
//            self.freitagView.hidden = YES;
//            self.samstagView.hidden = YES;
//            self.sonntagView.hidden = NO;
//            self.kinderView.hidden = YES;
            self.programmTitleLabel.text = @"Sonntag, 11. August 2013";
            break;
            //            kinder
        case 3:
//            self.freitagView.hidden = YES;
//            self.samstagView.hidden = YES;
//            self.sonntagView.hidden = YES;
//            self.kinderView.hidden = NO;
            self.programmTitleLabel.text = @"Kinder Programm";
            break;
     
        default:
            break;
    }
}
@end
