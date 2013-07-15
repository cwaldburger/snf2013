//
//  snfAppDelegate.m
//  snf
//
//  Created by Cédric Waldburger on 3/5/13.
//  Copyright (c) 2013 mediasign. All rights reserved.
//

#import "snfAppDelegate.h"
#import "ProgrammDoc.h"
#import "snfFestbeizenTableViewController.h"

@implementation snfAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    // Load example rows
//    ProgrammDoc *bug1 = [[ProgrammDoc alloc] initWithTitle:@"Potato Bug" rating:4 thumbImage:[UIImage imageNamed:@"snfrj_icon.png"] fullImage:[UIImage imageNamed:@"snfrj_icon.png"]];
//    ProgrammDoc *bug2 = [[ProgrammDoc alloc] initWithTitle:@"House Centipede" rating:3 thumbImage:[UIImage imageNamed:@"snfrj_icon.png"] fullImage:[UIImage imageNamed:@"snfrj_icon.png"]];
//    ProgrammDoc *bug3 = [[ProgrammDoc alloc] initWithTitle:@"Wolf Spider" rating:5 thumbImage:[UIImage imageNamed:@"snfrj_icon.png"] fullImage:[UIImage imageNamed:@"snfrj_icon.png"]];
//    ProgrammDoc *bug4 = [[ProgrammDoc alloc] initWithTitle:@"Lady Bug" rating:1 thumbImage:[UIImage imageNamed:@"snfrj_icon.png"] fullImage:[UIImage imageNamed:@"snfrj_icon.png"]];
//    NSMutableArray *programs = [NSMutableArray arrayWithObjects:bug1, bug2, bug3, bug4, nil];
//    
//    UITabBarController * navController = (UITabBarController *) self.window.rootViewController;
//    snfFestbeizenTableViewController * snfFestbeizenTableViewController = [navController.viewControllers objectAtIndex:0];
//    snfFestbeizenTableViewController.programs = programs;
    
    
    // Initialize TestFlight
    [TestFlight takeOff:@"dbf2e851-8833-4a48-9b32-85dafb3dda40"];
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
