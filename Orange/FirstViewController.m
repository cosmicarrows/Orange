//
//  FirstViewController.m
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"SCHEDULE" image:nil tag:0];
    [[self tabBarItem] setFinishedSelectedImage:[UIImage imageNamed:@"scheduleon.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"scheduleoff.png"]];
    
    [[self tabBarItem] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                               [UIColor orangeColor], UITextAttributeTextColor,
                                               nil] forState:UIControlStateSelected];

    self.view.backgroundColor = [UIColor orangeColor];

    
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
