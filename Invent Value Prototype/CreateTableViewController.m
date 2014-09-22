//
//  CreateViewController.m
//  Invent Value Prototype
//
//  Created by Daniel Fairbanks on 8/13/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import "CreateTableViewController.h"
#import "Idea.h"
#import "CategoryTableViewController.h"

@interface CreateTableViewController () <UITableViewDataSource, UITableViewDelegate, UIActionSheetDelegate,UIImagePickerControllerDelegate, UIActivityItemSource, UIPickerViewDataSource, UIPickerViewDelegate, UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cameraBarButton;
@property (strong,nonatomic) UIActionSheet *myActionSheet;
@property(nonatomic) BOOL clearsOnInsertion;
@property (weak, nonatomic) IBOutlet UILabel *descriptionPlaceholderText;
@property (weak, nonatomic) IBOutlet UIPickerView *categoryPickerView;
@property (strong, nonatomic) NSArray *categoryArray;
@property (weak, nonatomic) IBOutlet CategoryTableViewController *categoryCell;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UITextField *ideaTitleTextField;

@end

@implementation CreateTableViewController
{
    NSString *_category;
}


- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        _category = @"No Category";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNeedsStatusBarAppearanceUpdate];
    
    self.categoryArray = [NSArray new];
    
    self.categoryArray = @[@"Business Development", @"Operations", @"Human Resources", @"Marketing", @"Finance", @"Strategy", @"IT", @"Leadership", @"No Category"];
    
    self.categoryPickerView.delegate = self;
    
    if (self.selectedIdea != nil) {
        self.title = @"Edit Checklist";
//        self.textField.text = self.checklistToEdit.name;
//        self.doneBarButton.enabled = YES;
        _category = self.selectedIdea.category;
    }
    
    self.categoryLabel.text = @"None";
    
    self.descriptionTextView.delegate = self;
    
    self.descriptionTextView.text = @"Description";
    self.descriptionTextView.textColor = [UIColor lightGrayColor];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    //View will appear
    [self.navigationController setToolbarHidden:NO animated:YES];
    [self setToolbarItems:@[_cameraBarButton] animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    //View will disappear
    [self.navigationController setToolbarHidden:YES animated:YES];
    [self setToolbarItems:@[_cameraBarButton] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
////    [super setSelected:selected animated:animated];
//    
//    self.descriptionTextView.delegate = self;
//    
//    self.descriptionTextView.text = @"Description";
//    self.descriptionTextView.textColor = [UIColor lightGrayColor];
//}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@"Description"]) {
        textView.text = @"";
        textView.textColor = [UIColor blackColor]; //optional
    }
    [textView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"Description";
        textView.textColor = [UIColor lightGrayColor]; //optional
    }
    [textView resignFirstResponder];
}

- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)CameraButtonPressed:(id)sender {
    self.myActionSheet = [[UIActionSheet alloc] initWithTitle:@"Photos" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete Photo" otherButtonTitles:@"Take Photo",@"Choose Photo", nil];
    
    [self.myActionSheet showInView:self.view];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        return indexPath;
    } else {
        return nil;
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section ==0) {
        return 20;
    } else {
        return 20;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return 44;
        } else {
            return 100;
        }
    } else {
        return 44;
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section ==0) {
        return @"";
    } else if (section == 1){
        return @"";
    } else {
        return @"";
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    } else {
        return 1;
    }
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = nil;
//    
////    if (indexPath.section == 0) {
////        cell = [tableView dequeueReusableCellWithIdentifier:@"ElevatorPitchCell"];
////        
////    } else if (indexPath.section == 1) {
////        cell = [tableView dequeueReusableCellWithIdentifier:@"DescriptionCell"];
////    } else {
////        cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell"];
////
////    }
////
//    
//    
//    return cell;
//}



//#pragma mark -
//#pragma mark PickerView DataSource
//
//- (NSInteger)numberOfComponentsInPickerView:
//(UIPickerView *)pickerView
//{
//    return 1;
//}
//
//- (NSInteger)pickerView:(UIPickerView *)pickerView
//numberOfRowsInComponent:(NSInteger)component
//{
//    return _categoryArray.count;
//}
//
//- (NSString *)pickerView:(UIPickerView *)pickerView
//             titleForRow:(NSInteger)row
//            forComponent:(NSInteger)component
//{
//    return _categoryArray[row];
//}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"pickCategory"]) {
        CategoryTableViewController *controller = segue.destinationViewController;
        controller.delegate = self;
    }
}

#pragma mark - CategoryTableViewControllerDelegate Methods

-(void)categoryPicker:(CategoryTableViewController *)picker didPickCategory:(NSString *)category {
    _category = category;
    self.categoryLabel.text = _category;
    
    [self.navigationController popViewControllerAnimated:YES];
}


@end
