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
@synthesize programmSegmentedControl, programmTextView;

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
    
    NSString *freitagPath = [[NSBundle mainBundle] pathForResource:@"freitagText" ofType:@"txt"];
    NSString *freitagText = [NSString stringWithContentsOfFile:freitagPath encoding:NSUTF8StringEncoding error:nil];

    programmTextView.text = freitagText;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentedControlChanged:(UISegmentedControl *)sender {

    NSString *tagID = nil;
    
    switch (sender.selectedSegmentIndex) {
            //            freitag
        case 0:
            tagID = @"freitagText";
            break;
            //            samstag
        case 1:
            tagID = @"samstagText";
            break;
            //            sonntag
        case 2:
            tagID = @"sonntagText";
            break;
            //            kinder
        case 3:
            tagID = @"kinderText";
            break;
     
        default:
            break;
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
    NSString *newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    programmTextView.text = newText;
    [self.programmTextView setContentOffset:CGPointZero animated:NO];
    
}
@end
