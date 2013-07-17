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
}

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
    tableDataTitle = [NSArray arrayWithObjects: @"45er-Bewegig Rapperswil-Jona", @"Club kochende Männer RJ", @"FDP Rapperswil-Jona", @"Förderverein für Tanz & Musik", @"Fortuna Fire Crew", @"Guggenmusik Harlekinos", @"H.B.S. Schule", @"Hobby-Motocross-Club Wangen", @"IG 99 Problems", @"IG Rondo", @"Kawaii Agentur", @"Lehrbar", @"Rapperswiler Schlosshüüler", @"Schellegoggi-Zunft", @"Stadtmusik Rapperswil-Jona", @"Stadtsänger Rapperswil-Jona", @"UGS Jona-Rapperswil", @"UHC Rappi Tigers", @"UHT Rapperswil", @"ZAK Jona", @"Veloclub Stadtrose", @"SUP Swiss 'Stand Up Paddle'", @"Tibetverein", @"Rapperswil-Jona Lakers", @"Verkehrsverein Rapperswil-Jona", @"Radio Zürisee", nil];
    tableDataDesc = [NSArray arrayWithObjects: @"Schnitzelbrot, Bratwurst, Cervelat", @"Risotto", @"Würste & Grilllutscher", @"Würste & Grilllutscher", @"Sparerips, Poulet, Peperoni, Dattel-Tomaten", @"CUBA-BAR, Whiskey-& Cigarren-Lounge", @"Glacé im Becher", @"Motocross-Bar, nur Getränke", @"Barbeque-Sandwich, Rib-Eye Steak", @"Hawaii-Bar, Würste, Steaks, Pommes Frites", @"nur Getränke", @"Spanferkel, Kabissalat, Käseschnitte", @"Würste, Schnitzel", @"Würste, Steaks", @"Würste, Steaks, Pommes Frites", @"Spaghetti-Plausch", @"zur grünen Fischbeiz, Fischknusperli", @"nur Getränke", @"Grill, Chicken Nuggets, Pommes Frites", @"Würste", @"Würste", @"nur Getränke, Testen des StandUp-Paddle", @"Tibetische Spezialitäten", @"Grill", @"Nur für geladene Gäste", @"Diverse Bars und Imbissstände", nil];

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
	}
}


@end
