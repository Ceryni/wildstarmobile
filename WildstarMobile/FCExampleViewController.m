//
//  FCExampleViewController.m
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/3/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import "FCExampleViewController.h"

@interface FCExampleViewController ()

@end

@implementation FCExampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.books = @[@"Cat's Cradle", @"Ender's Game", @"Hitchhiker's Guide", @"Harry Potter"];
    self.selectedBook = self.books[0];
    self.pickerLabel.text = self.selectedBook;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)done
{
    self.pickerLabel.text = self.selectedBook;
    [self.actionSheet dismissWithClickedButtonIndex:0 animated:YES];
}

- (void)cancel
{
    self.selectedBook = self.pickerLabel.text;
    [self.actionSheet dismissWithClickedButtonIndex:0 animated:YES];
}

#pragma mark - Action Picker
- (IBAction)showActionPicker:(id)sender
{
    if(!self.actionSheet){
        self.actionSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil];
    }
    
    
    UIPickerView *pickerView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 40, 0, 0)];
    pickerView.showsSelectionIndicator = YES;
    pickerView.delegate = self;
    pickerView.dataSource = self;
    pickerView.accessibilityLabel = @"Book Picker";
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    
    [toolbar setTintColor:[UIColor blackColor]];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleBordered target:self action:@selector(cancel)];
    
    [toolbar setItems:@[cancelButton, flexSpace, doneButton] animated:YES];
    
    [self.actionSheet addSubview:toolbar];
    [self.actionSheet addSubview:pickerView];
    
    
    [self.actionSheet showInView:[UIApplication sharedApplication].keyWindow.rootViewController.view];
    self.actionSheet.bounds = CGRectMake(0, 0, 320, 485);
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (self.books.count == 0) {
        return 1;
    }
    
    return self.books.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.books[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"Selected: %@", self.books[row]);
    self.selectedBook = self.books[row];
}

@end
