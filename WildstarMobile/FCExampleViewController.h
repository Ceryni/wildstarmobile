//
//  FCExampleViewController.h
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/3/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FCExampleViewController : UIViewController
<
UIPickerViewDataSource,
UIPickerViewDelegate,
UIActionSheetDelegate
>

@property (weak, nonatomic) IBOutlet UILabel *pickerLabel;
@property (weak, nonatomic) IBOutlet UIButton *pickerSpawnerButton;

@property (strong, nonatomic) NSArray *books;

@property (strong, nonatomic) NSString *selectedBook;

- (IBAction)showActionPicker:(id)sender;

@property (strong, nonatomic) UIActionSheet *actionSheet;

@end
