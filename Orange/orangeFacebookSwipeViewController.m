//
//  orangeFacebookSwipeViewController.m
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import "orangeFacebookSwipeViewController.h"

@interface orangeFacebookSwipeViewController ()

@end

@implementation orangeFacebookSwipeViewController
@synthesize topLayer = _topLayer;
@synthesize layerPosition = _layerPosition;
@synthesize tableView = _tableView;
@synthesize dataArray = _dataArray;

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
    self.layerPosition = self.topLayer.frame.origin.x;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.dataArray = [NSMutableArray arrayWithObjects:@"", @"", @"", @"", nil];
}



#define VIEW_HIDDEN 260

-(void)animateLayerToPoint:(CGFloat)x
{
    [UIView animateWithDuration:0.3
                          delay:0
                        options:UIViewAnimationCurveEaseOut
                     animations:^{
                         CGRect frame = self.topLayer.frame;
                         frame.origin.x = x;
                         self.topLayer.frame = frame;
                         
                     }
                     completion:^(BOOL finished){
                         self.layerPosition = self.topLayer.frame.origin.x;
                     }];
}
- (IBAction)panLayer:(UIPanGestureRecognizer *)pan {
    
    if (pan.state == UIGestureRecognizerStateChanged) {
        CGPoint point = [pan translationInView:self.topLayer];
        CGRect frame = self.topLayer.frame;
        frame.origin.x = self.layerPosition + point.x;
        if (frame.origin.x < 0) frame.origin.x = 0;
        self.topLayer.frame = frame;
        
        
    }
    
    if (pan.state == UIGestureRecognizerStateEnded){
        
        if (self.topLayer.frame.origin.x <= 160) {
            [self animateLayerToPoint:0];
            
        }
        else {
            [self animateLayerToPoint: VIEW_HIDDEN];
        }
        
        
        
        
        
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %i", indexPath.row+1];
    cell.detailTextLabel.text = @"2012";
    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
