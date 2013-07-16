//
//  snfInfoViewController.m
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

// ADD INFO FOR JSON IMPORT
#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1
#define kLatestKivaLoansURL [NSURL URLWithString:@"http://api.kivaws.org/v1/loans/search.json?status=fundraising"] //2


#import "snfInfoViewController.h"

@interface snfInfoViewController () 

@end

@implementation snfInfoViewController
@synthesize infoView, planView, ovView, notfallView, ovWebView, humanReadable, infoTextView, planImageView, planScrollView;

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

    
    // Set Text of the infoTextView
    NSString *infoText = @"Seenachtfest Rapperswil-Jona\n\
    c/o Verkehrsverein Rapperswil-Jona\n\
    Fischmarkplatz 1\n\
    8640 Rapperswil\n\
    info@seenachtfest-rj.ch\n\
    Tel: 055 220 57 57";
    
    UIFont *font=[UIFont fontWithName:@"Helvetica-Bold" size:14.0f];
    
    NSMutableAttributedString *myString = [[NSMutableAttributedString alloc] initWithString:infoText];
    
    // make 1st line bold
    [myString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, 28)];
    
    infoTextView.attributedText = myString;
    
    
    // Load Plan Image View
    
    UIImage* image = [UIImage imageNamed:@"festplan"];
    
    NSAssert(image, @"image must not be nil."
             "Check that you added the image to your bundle and that "
             "the filename above matches the name of your image.");
    
    self.planImageView.image = image;
    [self.planImageView sizeToFit];
    
    self.planScrollView.contentSize = image.size;
    self.planScrollView.delegate = self;
    self.planScrollView.minimumZoomScale = 0.3;
    self.planScrollView.maximumZoomScale = 100.0;
    
    
    
    // Load ZVV-Webview
    NSString *urlAddress = @"http://m.sbb.ch";
    NSURL *url = [NSURL URLWithString: urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [ovWebView loadRequest:requestObj];
    


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentValueChanged:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
//            info
        case 0:
            self.infoView.hidden = NO;
            self.planView.hidden = YES;
            self.ovView.hidden = YES;
            self.notfallView.hidden = YES;
            break;
//            plan
        case 1:
            self.infoView.hidden = YES;
            self.planView.hidden = NO;
            self.ovView.hidden = YES;
            self.notfallView.hidden = YES;
            break;
//            OV
        case 2:
            self.infoView.hidden = YES;
            self.planView.hidden = YES;
            self.ovView.hidden = NO;
            self.notfallView.hidden = YES;
            break;
//            Notfall
        case 3:
            self.infoView.hidden = YES;
            self.planView.hidden = YES;
            self.ovView.hidden = YES;
            self.notfallView.hidden = NO;
            break;
            
            
        default:
            break;
    }
}
- (IBAction)call144:(id)sender {
    UIDevice *device = [UIDevice currentDevice];
    if ([[device model] isEqualToString:@"iPhone"] ) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:144"]]];
    } else {
        UIAlertView *notpermitted=[[UIAlertView alloc] initWithTitle:@"Fehler" message:@"Ihr Gerät unterstützt keine Anrufe." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [notpermitted show];
    }
    
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:144"]];
}

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.planImageView;
}

//// Support Method for the JSON parsing
//- (void)fetchedData:(NSData *)responseData {
//    //parse out the json data
//    NSError* error;
//    NSDictionary* json = [NSJSONSerialization
//                          JSONObjectWithData:responseData //1
//                          
//                          options:kNilOptions
//                          error:&error];
//    
//    NSArray* latestLoans = [json objectForKey:@"loans"]; //2
//    
//    NSLog(@"loans: %@", latestLoans); //3
//
//    // 1) Get the latest loan
//    NSDictionary* loan = [latestLoans objectAtIndex:0];
//    
//    // 2) Get the funded amount and loan amount
//    NSNumber* fundedAmount = [loan objectForKey:@"funded_amount"];
//    NSNumber* loanAmount = [loan objectForKey:@"loan_amount"];
//    float outstandingAmount = [loanAmount floatValue] -
//    [fundedAmount floatValue];
//    
//    // 3) Set the label appropriately
//    humanReadable.text = [NSString stringWithFormat:@"Latest loan: %@from %@ needs another $%.2f to pursue their entrepreneural dream",
//                         [loan objectForKey:@"name"],
//                         [(NSDictionary*)[loan objectForKey:@"location"]
//                          objectForKey:@"country"],
//                         outstandingAmount];
//    
//}













@end


































