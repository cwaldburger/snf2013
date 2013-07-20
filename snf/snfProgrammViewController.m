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
    NSString *path = nil;
    NSString *newText = nil;
    
    switch (sender.selectedSegmentIndex) {
            //            freitag
        case 0:
            tagID = @"freitagText";
            path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
            newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            
//            NSMutableAttributedString *infoString = [[NSMutableAttributedString alloc]
//                                                     initWithString: newText];
//            
//            [infoString addAttribute:NSFontAttributeName
//                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
//                               range:NSMakeRange(896,9)];
//            
//            [infoString addAttribute:NSFontAttributeName
//                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
//                               range:NSMakeRange(1068,7)];
//            
//            [infoString addAttribute:NSFontAttributeName
//                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
//                               range:NSMakeRange(1320,13)];
//            
//            programmTextView.attributedText = infoString;
            
            break;
            //            samstag
        case 1:
            tagID = @"samstagText";
            path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
            newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            break;
            //            sonntag
        case 2:
            tagID = @"sonntagText";
            path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
            newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            break;
            //            kinder
        case 3:
            tagID = @"kinderText";
            path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
            newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            break;
     
        default:
            break;
    }
    

    programmTextView.text = newText;
    [self.programmTextView setContentOffset:CGPointZero animated:NO];
    
}
@end
