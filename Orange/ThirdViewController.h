//
//  ThirdViewController.h
//  Orange
//
//  Created by Laurence Wingo on 12/18/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController <UIScrollViewDelegate>
@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;
- (void)centerScrollViewContents;
- (void)scrollViewDoubleTapped:(UITapGestureRecognizer*)recognizer;
- (void)scrollViewTwoFingerTapped:(UITapGestureRecognizer*)recognizer;
@end
