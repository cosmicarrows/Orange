//
//  FifthViewController.h
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <Twitter/Twitter.h>

@interface FifthViewController : UIViewController <UITableViewDataSource> {
    
    NSArray *tweets;
    UISegmentedControl *mySegmentedControl;
    UITableView *myscheduleTableView;
}

@property (nonatomic, strong) UISegmentedControl *mySegmentedControl;
@property (nonatomic, strong) UITableView *myscheduleTableView;

- (void)fetchTweets;

@end
