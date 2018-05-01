//
//  SecondViewController.m
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "SecondViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize myTableView;


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;  {
    return 6;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    
    return 1;
    
}





- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;{
    
    UITableViewCell *cell = nil;
    
    cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyCell"];
        
        
        
        
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Speaker %lu", (unsigned long)indexPath.row + 1];
    
    cell.textLabel.font = [UIFont fontWithName:@"Gill Sans" size:16.0];
    
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Speakers Position\nMinistry"];
    cell.detailTextLabel.font = [UIFont  systemFontOfSize:12];
    
    
    
    
    cell.detailTextLabel.numberOfLines = 2;
    
    
    UIView *bgColorView = [[UIView alloc] init];
    [bgColorView setBackgroundColor:[UIColor orangeColor]];
    
    [cell setSelectedBackgroundView:bgColorView];
    bgColorView.layer.cornerRadius = 10;
    cell.imageView.image = [UIImage imageNamed:@"tableviewborder.png"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    [[cell textLabel] setBackgroundColor:[UIColor clearColor]];
    [[cell detailTextLabel] setBackgroundColor:[UIColor clearColor]];
    
    
    UIView *cellBackView = [[UIView alloc] initWithFrame:CGRectZero];
    cellBackView.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"cellbkg3.png"]];
    cell.backgroundView = cellBackView;
    
    
    
    
    
    
    
    
    
    
    cell.textLabel.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"cellbkg1.png"]];
    
    cell.detailTextLabel.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"cellbkg1.png"]];
    
    
    
    
    
    return cell;
    
}

/*
 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
 int i = 50;
 return i;
 }
 
 */







- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.myTableView.backgroundView = [[UIView alloc] init];
    [myTableView setBackgroundColor:UIColor.clearColor];
    
    self.myTableView.rowHeight = 55;
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"SCHEDULE" image:[UIImage imageNamed:@"scheduleon.png"] tag:0];
    
    /*

    [[self tabBarItem] setFinishedSelectedImage:[UIImage imageNamed:@"faqon.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"faqoff.png"]];
    */
    [[self tabBarItem] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                               [UIColor orangeColor], UITextAttributeTextColor,
                                               nil] forState:UIControlStateSelected];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
