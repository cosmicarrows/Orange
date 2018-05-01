//
//  orangeFacebookSwipeViewController.h
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface orangeFacebookSwipeViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIView *topLayer;
@property (nonatomic) CGFloat layerPosition;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *dataArray;

@end
