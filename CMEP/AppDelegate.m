//
//  AppDelegate.m
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeViewController.h"
#import "MenuViewController.h"
#import "CMEPNavigationController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    HomeViewController *homevc = [sb instantiateViewControllerWithIdentifier:@"HomeViewController"];
    CMEPNavigationController *navController = [[CMEPNavigationController alloc] initWithRootViewController:homevc];
    MenuViewController *menuvc = [sb instantiateViewControllerWithIdentifier:@"MenuViewController"];
    
    deckController = [[IIViewDeckController alloc] initWithCenterViewController:navController leftViewController:menuvc];
    deckController.leftSize = 110;
    deckController.centerhiddenInteractivity = IIViewDeckCenterHiddenNotUserInteractiveWithTapToClose;
    deckController.panningMode = IIViewDeckFullViewPanning;
    
    self.window.rootViewController = deckController;
    [self.window makeKeyAndVisible];
    
    
    //[[[UIAlertView alloc] initWithTitle:@"ATENÇÃO" message:@"Este app esta em fase de desenvolvimento, suas funcionalidades em sua maioria estão em desenvolvimento. v_beta_1.1" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil]show];
    
    //[Utils showFonts];
    
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
