//
//  DescriptionTableViewCell.m
//  Invent Value Prototype
//
//  Created by Daniel Fairbanks on 9/15/14.
//  Copyright (c) 2014 Fairbanksdan. All rights reserved.
//

#import "DescriptionTableViewCell.h"

@interface DescriptionTableViewCell () <UITextViewDelegate>
@end

@implementation DescriptionTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    self.descriptionTextView.delegate = self;
    
    self.descriptionTextView.text = @"Description";
    self.descriptionTextView.textColor = [UIColor lightGrayColor];
}

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

@end
