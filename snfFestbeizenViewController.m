//
//  snfFestbeizenViewController.m
//  snf
//
//  Created by Cédric Waldburger on 7/16/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfFestbeizenViewController.h"
#import "snfFestbeizenTableViewCell.h"

@interface snfFestbeizenViewController ()

@end

@implementation snfFestbeizenViewController
{
    NSArray *tableDataNr;
    NSArray *tableDataTitle;
    NSArray *tableDataDesc;
    NSArray *tableDataLat;
    NSArray *tableDataLong;
}

@synthesize festbeizenTableView;

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
    // Initialize table data
    tableDataNr = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"16", @"17", @"18", @"19", @"20", @"21", @"22", @"23", @"24", @"25", @"26", nil];
    
    tableDataTitle = [NSArray arrayWithObjects: @"45er-Bewegig Rapperswil-Jona", @"Club kochender Männer RJ", @"FDP Rapperswil-Jona", @"Förderverein für Tanz & Musik", @"Fortuna Fire Crew", @"Guggenmusik Harlekinos", @"H.B.S. Schule", @"Hobby-Motocross-Club Wagen", @"IG 99 Problems", @"IG Rondo", @"Kawaii Agentur", @"Lehrbar", @"Rapperswiler Schlosshüüler", @"Schellegoggi-Zunft", @"Stadtmusik Rapperswil", @"Stadtsänger Rapperswil", @"UGS Jona-Rapperswil", @"UHC Rappi Tigers", @"UHT Rapperswil", @"ZAK Jona", @"Veloclub Stadtrose", @"SUP Swiss 'Stand Up Paddle'", @"Tibeterverein", @"Rapperswil-Jona Lakers", @"Verkehrsverein Rapperswil-Jona", @"Radio Zürisee", nil];
    
    tableDataDesc = [NSArray arrayWithObjects: @"Schnitzelbrot, Bratwurst, Cervelat", @"Risotto", @"Würste & Grilllutscher", @"Würste", @"Sparerips, Poulet, Peperoni, Dattel-Tomaten", @"CUBA-BAR, Whiskey-& Cigarren-Lounge", @"Glacé im Becher", @"Motocross-Bar, nur Getränke", @"Barbeque-Sandwich, Rib-Eye Steak", @"Hawaii-Bar, Würste, Steaks, Pommes Frites", @"nur Getränke", @"Spanferkel, Kabissalat, Käseschnitte", @"Würste, Schnitzel", @"Würste, Steaks", @"Würste, Steaks, Pommes Frites", @"Spaghetti-Plausch", @"Zur grünen Fischbeiz, Fischknusperli", @"Nur Getränke", @"Grill, Chicken Nuggets, Pommes Frites", @"Würste", @"Würste", @"Nur Getränke, Testen des StandUp-Paddle", @"Tibetische Spezialitäten", @"Grill", @"Nur für geladene Gäste", @"Diverse Bars und Imbissstände", nil];
    
    tableDataLat = [NSArray arrayWithObjects: [NSNumber numberWithDouble: 47.227048 ], [NSNumber numberWithDouble: 47.22602 ], [NSNumber numberWithDouble: 47.225623 ], [NSNumber numberWithDouble: 47.22588 ], [NSNumber numberWithDouble: 47.223552 ], [NSNumber numberWithDouble: 47.225932 ], [NSNumber numberWithDouble: 47.225612 ], [NSNumber numberWithDouble: 47.225426 ], [NSNumber numberWithDouble: 47.224669 ], [NSNumber numberWithDouble: 47.226986 ], [NSNumber numberWithDouble: 47.227113 ], [NSNumber numberWithDouble: 47.225612 ], [NSNumber numberWithDouble: 47.225317 ], [NSNumber numberWithDouble: 47.226873 ], [NSNumber numberWithDouble: 47.226361 ], [NSNumber numberWithDouble: 47.22594 ], [NSNumber numberWithDouble: 47.226361 ], [NSNumber numberWithDouble: 47.224325 ], [NSNumber numberWithDouble: 47.22532 ], [NSNumber numberWithDouble: 47.223816 ], [NSNumber numberWithDouble: 47.224742 ], [NSNumber numberWithDouble: 47.223317 ], [NSNumber numberWithDouble: 47.226042 ], [NSNumber numberWithDouble: 47.225787 ], [NSNumber numberWithDouble: 47.224898 ], [NSNumber numberWithDouble: 47.226664 ], nil];
    
    tableDataLong = [NSArray arrayWithObjects: [NSNumber numberWithDouble: 8.814532], [NSNumber numberWithDouble: 8.814092], [NSNumber numberWithDouble: 8.815658], [NSNumber numberWithDouble: 8.814543], [NSNumber numberWithDouble: 8.815702], [NSNumber numberWithDouble: 8.815195], [NSNumber numberWithDouble: 8.815096], [NSNumber numberWithDouble: 8.813829], [NSNumber numberWithDouble: 8.814532], [NSNumber numberWithDouble: 8.812805], [NSNumber numberWithDouble: 8.815267], [NSNumber numberWithDouble: 8.815096], [NSNumber numberWithDouble: 8.815809], [NSNumber numberWithDouble: 8.811356], [NSNumber numberWithDouble: 8.816161], [NSNumber numberWithDouble: 8.813513], [NSNumber numberWithDouble: 8.816161], [NSNumber numberWithDouble: 8.813996], [NSNumber numberWithDouble: 8.81531], [NSNumber numberWithDouble: 8.813922], [NSNumber numberWithDouble: 8.814918], [NSNumber numberWithDouble: 8.815197], [NSNumber numberWithDouble: 8.813856], [NSNumber numberWithDouble: 8.813985], [NSNumber numberWithDouble: 8.813658], [NSNumber numberWithDouble: 8.816408], nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableDataNr count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"FestbeizenCell";
    
    snfFestbeizenTableViewCell *cell = (snfFestbeizenTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"FestbeizenCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }

    cell.festbeizenNr.text = [tableDataNr objectAtIndex:indexPath.row];
    cell.festbeizenTitle.text = [tableDataTitle objectAtIndex:indexPath.row];
    cell.festbeizenDesc.text = [tableDataDesc objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - snfFestbeizenDetailViewControllerDelegate

- (void)snfFestbeizenDetailViewControllerDidClose: (snfFestbeizenDetailViewController *)controller
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"PickFestbeiz"])
	{
        
		UINavigationController *navigationController = segue.destinationViewController;
		snfFestbeizenDetailViewController *festbeizenDetailsViewController = [[navigationController viewControllers] objectAtIndex:0];
		festbeizenDetailsViewController.delegate = self;
     
        NSLog(@"The sender is %@",sender);
        NSIndexPath *indexPath = [self.festbeizenTableView indexPathForCell:sender];

        // pass on the detail info
        festbeizenDetailsViewController.detailTitle = [tableDataTitle objectAtIndex:indexPath.row];
        festbeizenDetailsViewController.detailDesc = [tableDataDesc objectAtIndex:indexPath.row];
        festbeizenDetailsViewController.detailLat = [tableDataLat objectAtIndex:indexPath.row];
        festbeizenDetailsViewController.detailLong = [tableDataLong objectAtIndex:indexPath.row];
	}
    
    
}


@end
