//
//  CreateChallengeViewController.m
//  Invent Value Prototype
//
//  Created by Daniel Fairbanks on 8/14/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import "CreateChallengeViewController.h"

@interface CreateChallengeViewController ()

@end

@implementation CreateChallengeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.scrollView setScrollEnabled:YES];
    [self.scrollView setContentSize:CGSizeMake(320, 1980)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
