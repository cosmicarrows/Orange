//
//  FifthViewController.m
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "FifthViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface FifthViewController ()

@end

@implementation FifthViewController
@synthesize mySegmentedControl;
@synthesize myscheduleTableView;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/*
- (void)fetchTweets
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData* data = [NSData dataWithContentsOfURL:
                        [NSURL URLWithString: @"https://api.twitter.com/1/statuses/public_timeline.json"]];
        
        NSError* error;
        
        tweets = [NSJSONSerialization JSONObjectWithData:data
                                                 options:kNilOptions
                                                   error:&error];
        
        dispatch_async(dispatch_get_main_queue(), ^{
        });
    });
}


*/

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    
    
    //self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"VIDEO" image:[UIImage imageNamed:@"videoon.png"] tag:0];
    [[self tabBarItem] setFinishedSelectedImage:[UIImage imageNamed:@"videoon.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"vidtab2.png"]];
    
    [[self tabBarItem] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                               [UIColor orangeColor], UITextAttributeTextColor,
                                               nil] forState:UIControlStateSelected];
    
   // [self fetchTweets];
    
    NSArray *segmentsOfMySegmentControl = [[NSArray alloc]initWithObjects:[UIImage imageNamed:@"tuess.png"], [UIImage imageNamed:@"wedsegmented.png"], [UIImage imageNamed:@"thur.png"], [UIImage imageNamed:@"fri.png"], nil];
    self.mySegmentedControl = [[UISegmentedControl alloc]initWithItems:segmentsOfMySegmentControl];
    self.mySegmentedControl.frame = CGRectMake(0,53,320,30);
    [self.mySegmentedControl setDividerImage:[UIImage imageNamed:@"divider.png"] forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self.view addSubview:self.mySegmentedControl];
    UINavigationBar *naviBarObj = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    [self.view addSubview:naviBarObj];
    [naviBarObj setBackgroundImage:[UIImage imageNamed:@"navbarmyscheds.png"] forBarMetrics:UIBarMetricsDefault];
    naviBarObj.layer.shadowColor = [UIColor blackColor].CGColor;
    naviBarObj.layer.shadowOffset = CGSizeMake(0, 2);
    naviBarObj.layer.shadowOpacity = 1;
    naviBarObj.layer.shadowRadius = 1.0;
    
    
    
    myscheduleTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 85, 320, 400) style:UITableViewStyleGrouped];
    myscheduleTableView.dataSource = self;
    self.myscheduleTableView.backgroundColor=[UIColor clearColor];
     myscheduleTableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tableviewbkg.png"]];
    UIImage *backgroundImage = [UIImage imageNamed:@"tableviewbkg.png"];
    UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:backgroundImage];
    self.myscheduleTableView.backgroundView=backgroundImageView;
    [self.view addSubview:myscheduleTableView];

    
}



                           
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
    [bgColorView setBackgroundColor:[UIColor clearColor]];
   cell.textLabel.highlightedTextColor = [UIColor orangeColor];
    cell.detailTextLabel.highlightedTextColor = [UIColor orangeColor];
    //cell.imageView.layer.masksToBounds = YES;
    //cell.imageView.layer.cornerRadius = 5.0;
    cell.layer.masksToBounds = YES;
    cell.layer.cornerRadius = 10.0;
    
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


                           

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
