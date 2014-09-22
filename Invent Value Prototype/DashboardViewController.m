//
//  DashboardViewController.m
//  Invent Value Prototype
//
//  Created by Daniel Fairbanks on 8/13/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import "DashboardViewController.h"
#import "CreateTableViewController.h"
#import "CreateChallengeViewController.h"

@interface DashboardViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIButton *createButton;
@property (strong, nonatomic) UIAlertView *alertView;
@property (nonatomic) CGFloat lastContentOffset;

//- (IBAction)startWalkthrough:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;

@property (strong, nonatomic) UILabel *headerLabel;

@property NSInteger tableViewHeight;

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.backgroundImageView.image = [UIImage imageNamed:self.imageFile];
    self.titleLabel.text = self.titleText;
    
    _ideateChallengesArray = [NSMutableArray new];
    _collaborateChallengesArray = [NSMutableArray new];
    _evaluateChallengesArray = [NSMutableArray new];
    
//    _pageTitles = @[@"30", @"700", @"$345", @"76"];
//    _pageImages = @[@"ChallengesBackgroundImage1.png", @"ChallengesBackgroundImage1.png", @"ChallengesBackgroundImage1.png", @"ChallengesBackgroundImage1.png"];
    [_ideateChallengesArray addObject:@"Challenge test idea 2"];
    [_ideateChallengesArray addObject:@"How do we improve innovation?"];
    [_ideateChallengesArray addObject:@"Challenge test idea"];
    
    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
//    [_collaborateChallengesArray addObject:@"test"];
    
    [_evaluateChallengesArray addObject:@"Test"];
    [_evaluateChallengesArray addObject:@"How could we count elephants more effectively?"];
    [_evaluateChallengesArray addObject:@"test"];
    [_evaluateChallengesArray addObject:@"Fresh Snacks"];
    
    [_createButton.layer setCornerRadius:3];
    
    [self setNeedsStatusBarAppearanceUpdate];
    
    self.tableViewHeight = (600 +(self.ideateChallengesArray.count*44)+(self.collaborateChallengesArray.count*44)+(self.evaluateChallengesArray.count*44));
    
//    [_NewIdeaInvisibleButton setEnabled:NO];
    
//    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
//    self.dashboardViewController.dataSource = self;
    
//    DashboardViewController *startingViewController = [self viewControllerAtIndex:0];
//    NSArray *viewControllers = @[startingViewController];
//    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
//    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 195);
//    
//    [self addChildViewController:_pageViewController];
//    [self.view addSubview:_pageViewController.view];
//    [self.pageViewController didMoveToParentViewController:self];
    
    [_scrollView setScrollEnabled:YES];
//    [_scrollView setFrame:CGRectMake(0, 20, 320, self.tableViewHeight)];
    [_scrollView setContentSize:CGSizeMake(320, self.tableViewHeight)];
//    [_ViewOfTableView setFrame:CGRectMake(0, 377, 320, self.tableViewHeight)];
//    [_tableView setFrame:CGRectMake(0, 377, 320, self.tableViewHeight)];

    
//    (395+(_ideateChallengesArray.count*44)+(_collaborateChallengesArray.count*44)+(_evaluateChallengesArray.count*44)))
    
//    self.alertView = [[UIAlertView alloc] initWithTitle:@"Create" message:@"What would you like to create?" delegate:self cancelButtonTitle:@"Idea" otherButtonTitles:@"Challenge", nil];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:NO animated:animated];
    [super viewWillDisappear:animated];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

//- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
//{
//    NSUInteger index = ((DashboardViewController*) viewController).pageIndex;
//    
//    if ((index == 0) || (index == NSNotFound)) {
//        return nil;
//    }
//    
//    index--;
//    return [self viewControllerAtIndex:index];
//}
//
//- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
//{
//    NSUInteger index = ((DashboardViewController*) viewController).pageIndex;
//    
//    if (index == NSNotFound) {
//        return nil;
//    }
//    
//    index++;
//    if (index == [self.pageTitles count]) {
//        return nil;
//    }
//    return [self viewControllerAtIndex:index];
//}
//
//- (DashboardViewController *)viewControllerAtIndex:(NSUInteger)index
//{
//    if (([self.pageTitles count] == 0) || (index >= [self.pageTitles count])) {
//        return nil;
//    }
//    
//    // Create a new view controller and pass suitable data.
//    DashboardViewController *dashboardViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DashboardViewController"];
//    dashboardViewController.imageFile = self.pageImages[index];
//    dashboardViewController.titleText = self.pageTitles[index];
//    dashboardViewController.pageIndex = index;
//    
//    return dashboardViewController;
//}
//
//- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
//{
//    return [self.pageTitles count];
//}
//
//- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
//{
//    return 0;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)createButtonPressed:(id)sender {
    
    [self performSegueWithIdentifier:@"IdeaSegue" sender:self];
//    [self.alertView show];
}

//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
//    
//    if (buttonIndex == 0) {
//        [self performSegueWithIdentifier:@"IdeaSegue" sender:self];
//        
//    } else {
//        CreateChallengeViewController *createChallengeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateChallengeViewController"];
//        [createChallengeVC setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
//        [self presentViewController:createChallengeVC animated:YES completion:nil];
//    }
//    
//    
//}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    [_NewIdeaInvisibleButton setEnabled:NO];
//    if (self.lastContentOffset < scrollView.contentOffset.y)
//    {
////        if (_scrollView.contentOffset.y >= 200 && _scrollView.contentOffset.y <= 400) {
////            [_scrollView setContentOffset:CGPointMake(0, 377) animated:YES];
//        
//        NSLog(@"Scrolling Up");
//    }
//    else if (self.lastContentOffset > scrollView.contentOffset.y)
//    {
////        if (_scrollView.contentOffset.y >= 0 && _scrollView.contentOffset.y <= 200) {
////            [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
////        }
//        NSLog(@"Scrolling Down");
//        }
//    
//    
//    self.lastContentOffset = scrollView.contentOffset.y;
}

//-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
//    [_NewIdeaInvisibleButton setEnabled:YES];
//    if (self.lastContentOffset < scrollView.contentOffset.y) {
//        [_scrollView setContentOffset:CGPointMake(0, 377) animated:YES];
//        NSLog(@"Scrolling Up");
//    } else if (self.lastContentOffset > scrollView.contentOffset.y) {
//        [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
//        NSLog(@"Scrolling Down");
//    }
//}
//
//-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView
//                    withVelocity:(CGPoint)velocity
//             targetContentOffset:(inout CGPoint *)targetContentOffset{
//    if (self.lastContentOffset < scrollView.contentOffset.y) {
//        [_scrollView setContentOffset:CGPointMake(0, 377) animated:YES];
//        NSLog(@"Scrolling Up");
//    } else if (self.lastContentOffset > scrollView.contentOffset.y) {
//        [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
//        NSLog(@"Scrolling Down");
//    }
//}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
//    [_NewIdeaInvisibleButton setEnabled:YES];
    if (_scrollView.contentOffset.y >= 200 && _scrollView.contentOffset.y <= 400) {
        [_scrollView setContentOffset:CGPointMake(0, 377) animated:YES];
    } else if (_scrollView.contentOffset.y >= 0 && _scrollView.contentOffset.y <= 200) {
            [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
}

-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView
                    withVelocity:(CGPoint)velocity
             targetContentOffset:(inout CGPoint *)targetContentOffset{
    if (_scrollView.contentOffset.y >= 200 && _scrollView.contentOffset.y <= 400) {
          [_scrollView setContentOffset:CGPointMake(0, 377) animated:YES];
    } else if (_scrollView.contentOffset.y >= 0 && _scrollView.contentOffset.y <= 200) {
        [_scrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    }
}

//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    if (section ==0) {
//        return @"Ideate";
//    } else if (section == 1){
//        return @"Collaborate";
//    } else {
//        return @"Evaluate";
//    }
//}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 65;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *header=[[UIView alloc]initWithFrame:CGRectMake(0,0,320,65)];
    header.backgroundColor=[UIColor whiteColor];
    
    UIImageView *headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 65)];
//    _headerLabel =[[UILabel alloc]initWithFrame:CGRectMake(20,5,300,50)];
//    
//    //    [headerLabel setFont:[UIFont fontWithName:@"Helvetica Neue UltraLight" size:80]];
//    
//    
    if (section ==0) {
        headerImage.image = [UIImage imageNamed:@"IdeateSectionHeader.png"];
    } else if (section == 1){
         headerImage.image = [UIImage imageNamed:@"CollaborateSectionHeader.png"];
    } else {
         headerImage.image = [UIImage imageNamed:@"EvaluateSectionHeader.png"];
    }
    
    [header addSubview:headerImage];
    
    
    return header;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return self.ideateChallengesArray.count;
    } else if (section == 1) {
        return self.collaborateChallengesArray.count;
    } else {
        return self.evaluateChallengesArray.count;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IdeateCell" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        cell.textLabel.text = self.ideateChallengesArray[indexPath.row];
    } else if (indexPath.section == 1) {
        cell.textLabel.text = self.collaborateChallengesArray[indexPath.row];
    } else {
        cell.textLabel.text = self.evaluateChallengesArray[indexPath.row];
    }
    
    return cell;
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
