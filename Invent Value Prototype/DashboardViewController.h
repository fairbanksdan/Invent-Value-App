//
//  DashboardViewController.h
//  Invent Value Prototype
//
//  Created by Daniel Fairbanks on 8/13/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardViewController : UIViewController {
//    IBOutlet UIScrollView *scrollView;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIButton *NewIdeaInvisibleButton;
@property (strong, nonatomic) NSMutableArray *ideateChallengesArray;
@property (strong, nonatomic) NSMutableArray *collaborateChallengesArray;
@property (strong, nonatomic) NSMutableArray *evaluateChallengesArray;
@property (weak, nonatomic) IBOutlet UIView *ViewOfTableView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;

@end
