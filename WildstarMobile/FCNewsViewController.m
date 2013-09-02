//
//  FCFirstViewController.m
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/1/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import "FCNewsViewController.h"

@interface FCNewsViewController ()

@end

@implementation FCNewsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.articles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ArticleThumbNailCell = @"ArticleThumbnailCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ArticleThumbNailCell];
    
    UILabel *articleHeader = (UILabel *)[cell viewWithTag:100];
    UIImage *articleThumbnail = (UIImage *)[cell viewWithTag:101];
    UILabel *articlePreview = (UILabel *)[cell viewWithTag:102];
    
    
    return cell;
    
}

#pragma mark - UITablewViewDelegate

@end
