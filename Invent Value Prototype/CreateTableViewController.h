//
//  CreateViewController.h
//  Invent Value Prototype
//
//  Created by Daniel Fairbanks on 8/13/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryTableViewController.h"

@interface CreateTableViewController : UITableViewController <CategoryTableViewControllerDelegate>

@property (strong, nonatomic) Idea *selectedIdea;
@property (weak, nonatomic) IBOutlet UILabel *categorySelectedLabel;

@end
