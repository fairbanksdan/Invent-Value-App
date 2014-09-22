//
//  CategoryTableViewController.h
//  Invent Value Prototype
//
//  Created by Daniel Fairbanks on 9/15/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Idea.h"

@class CategoryTableViewController;
@class Idea;

@protocol CategoryTableViewControllerDelegate <NSObject>

- (void)categoryPicker:(CategoryTableViewController *)picker didPickCategory:(NSString *)category;

//- (void)CategoryTableViewControllerDidCancel:(CategoryTableViewController *)controller;

//- (void)CategoryTableViewController:(CategoryTableViewController *)controller
//             didSelectCategory:(Idea *)category;

//- (void)CategoryTableViewController:(CategoryTableViewController *)controller
//            didFinishEditingItem:(CategoryItem *)item;
@end

@interface CategoryTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *categoryArray;



@property (nonatomic, weak) id <CategoryTableViewControllerDelegate> delegate;

@end
