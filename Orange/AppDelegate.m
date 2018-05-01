//
//  AppDelegate.m
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"


@implementation AppDelegate
@synthesize window=_window;
@synthesize tabBarController=_tabBarController;
@synthesize imgV = _imgV;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   //splash screen and animation:
    sleep(4);
    UIImageView *splash = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Default.png"]];
    [self.window.rootViewController.view addSubview:splash];
    
    [UIView animateWithDuration:0.5
                     animations:^{
                         splash.alpha = 0;
                     }
                     completion:^(BOOL finished) {
                         [splash removeFromSuperview];
                     }];

    // Override point for customization after application launch.
    
        [self.window makeKeyAndVisible];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    
    //[[UITabBar appearance] setSelectedImageTintColor:[[UIColor alloc] initWithRed:255 green:104 blue:31 alpha:0.0]];
   //black bakground with lines in the tab bar is the code below:
   [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbarfinale.png"]];
    //code for background of icon selected, black gradient background:
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tabselect.png"]];
    
   /*
    NSArray* unselectedImages = [NSArray arrayWithObjects:@"scheduleoff.png", @"speakeroff.png", @"venuemapoff.png", @"faqoff.png", @"videooff.png", nil];
    
    NSArray* selectedImages = [NSArray arrayWithObjects:@"scheduleon.png", @"speakeron.png", @"venuemapon.png", @"faqon.png", @"videoon.png", nil];
    
    NSArray *items = _tabBarController.tabBar.items;
    for (int idx = 0; idx < items.count; idx++) {
        UITabBarItem *item = [items objectAtIndex:idx];
        
        UIImage* selectedImage = [UIImage imageNamed:[selectedImages objectAtIndex:idx]];
        UIImage* unselectedImage = [UIImage imageNamed:[unselectedImages objectAtIndex:idx]];
        
        [item setFinishedSelectedImage:selectedImage withFinishedUnselectedImage:unselectedImage];
    }
    */
    /*
    [[UITabBarItem appearance] setTitleTextAttributes:
    [NSDictionary dictionaryWithObjectsAndKeys:
     [UIColor grayColor], UITextAttributeTextColor,
     [UIFont fontWithName:@"Gill Sans" size:8.0], UITextAttributeFont,
     nil]
forState:UIControlStateNormal];
    */
    
    
    
    
    
    
    
        
     
    
    
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
