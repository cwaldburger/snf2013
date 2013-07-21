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
    NSString *newText = [NSString stringWithContentsOfFile:freitagPath encoding:NSUTF8StringEncoding error:nil];
    UIColor *_green = [UIColor colorWithRed:(171/255.0) green:(203/255.0) blue:(102/255.0) alpha:1] ;
    
//     format text
    NSMutableAttributedString *infoString = [[NSMutableAttributedString alloc] initWithString:newText];
    
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:17.0]
                       range:NSMakeRange(0,23)];
    [infoString addAttribute:NSForegroundColorAttributeName value:_green range:NSMakeRange(0, 23)];
    
    
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(25,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(75,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(142,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(172,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(223,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(262,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(292,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(366,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(400,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(458,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(499,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(538,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(581,9)];
    [infoString addAttribute:NSFontAttributeName
                       value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                       range:NSMakeRange(630,9)];
    
    programmTextView.attributedText = infoString;
    
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
    NSMutableAttributedString *infoString = nil;
    UIColor *_green = [UIColor colorWithRed:(171/255.0) green:(203/255.0) blue:(102/255.0) alpha:1] ;
    
    switch (sender.selectedSegmentIndex) {
            //            freitag
        case 0:
            tagID = @"freitagText";
            path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
            newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            
            infoString = [[NSMutableAttributedString alloc] initWithString:newText];
            
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:17.0]
                               range:NSMakeRange(0,23)];
            [infoString addAttribute:NSForegroundColorAttributeName value:_green range:NSMakeRange(0, 23)];

            
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(25,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(75,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(142,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(172,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(223,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(262,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(292,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(366,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(400,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(458,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(499,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(538,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(581,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(630,9)];
            
            programmTextView.attributedText = infoString;
            
            break;

            //            samstag
        case 1:
            tagID = @"samstagText";
            path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
            newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            
            infoString = [[NSMutableAttributedString alloc] initWithString:newText];
            
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:17.0]
                               range:NSMakeRange(0,24)];
            [infoString addAttribute:NSForegroundColorAttributeName value:_green range:NSMakeRange(0, 24)];
            
            
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(26,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(75,19)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(136,9)]; //2
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(190,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(220,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(298,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(328,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(377,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(437,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(484,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(523,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(553,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(583,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(634,9)]; // 13
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(694,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(743,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(823,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(863,9)];//17
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(902,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(936,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(994,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(1052,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(1093,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(1135,9)];
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(1184,9)];

            
            programmTextView.attributedText = infoString;
            break;

            //            sonntag
        case 2:
            tagID = @"sonntagText";
            path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
            newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            
            infoString = [[NSMutableAttributedString alloc] initWithString:newText];
            
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:17.0]
                               range:NSMakeRange(0,24)];
            [infoString addAttribute:NSForegroundColorAttributeName value:_green range:NSMakeRange(0, 24)];
            
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(26,9)];
            
            
            
            programmTextView.attributedText = infoString;
            break;
            break;

            //            kinder
        case 3:
            tagID = @"kinderText";
            path = [[NSBundle mainBundle] pathForResource:tagID ofType:@"txt"];
            newText = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
            
            infoString = [[NSMutableAttributedString alloc] initWithString:newText];
            
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:17.0]
                               range:NSMakeRange(0,14)];
            [infoString addAttribute:NSForegroundColorAttributeName value:_green range:NSMakeRange(0, 14)];
            
            
            [infoString addAttribute:NSFontAttributeName
                               value:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0]
                               range:NSMakeRange(520,15)];

            
            programmTextView.attributedText = infoString;
            break;
            break;
     
        default:
            break;
    }
    

//    programmTextView.text = newText;
    [self.programmTextView setContentOffset:CGPointZero animated:NO];
    
}
@end
