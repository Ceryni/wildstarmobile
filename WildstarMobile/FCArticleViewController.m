//
//  FCArticleViewController.m
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/3/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import "FCArticleViewController.h"

@interface FCArticleViewController ()

@end

@implementation FCArticleViewController

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
    self.navigationItem.title = self.articleHeader;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
