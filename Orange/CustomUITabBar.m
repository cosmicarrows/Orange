//
//  CustomUITabBar.m
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "CustomUITabBar.h"

@interface CustomUITabBar ()

@end

@implementation CustomUITabBar

@synthesize tabBar1;

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
  
    
    
    
    
    CGRect frame = CGRectMake(0.0, 0, self.view.bounds.size.width, 48);
    
    UIView *v = [[UIView alloc] initWithFrame:frame];
    
    [v setBackgroundColor:[[UIColor alloc] initWithRed:1.0
                                                 green:0.0
                                                  blue:0.0
                                                 alpha:0.1]];
    
    [tabBar1 insertSubview:v atIndex:0];
    
    [[UITabBarItem appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor blackColor], UITextAttributeTextColor,
      [UIFont fontWithName:@"Gill Sans" size:8.0], UITextAttributeFont,
      nil]
                                             forState:UIControlStateHighlighted];
    

   
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
