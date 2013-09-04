//
//  FCFirstViewController.m
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/1/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import "FCNewsViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface FCNewsViewController (){
    FCArticlePreviewService *articlePreviewService;
}
    
@end

@implementation FCNewsViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    articlePreviewService = [[FCArticlePreviewService alloc] init];
    self.articles = [NSMutableArray array];
    
    self.tableView.separatorColor = [UIColor colorWithRed:80/255.0 green:80/255.0 blue:80/255.0 alpha:1.0];
    [self.articles addObjectsFromArray:[articlePreviewService scanArticlePreviewsOn:1]];
    
    NSLog(@"Loaded %d articles", self.articles.count);
    NSLog(@"FCNewsViewController did Load");
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
    
    UILabel *articleHeaderLabel = (UILabel *)[cell viewWithTag:100];
    UIImageView *articleThumbnailImageView = (UIImageView *)[cell viewWithTag:101];
    articleThumbnailImageView.layer.borderColor = [[UIColor blackColor] CGColor];
    articleThumbnailImageView.layer.borderWidth = 2.0;
    UILabel *articleSnippetLabel = (UILabel *)[cell viewWithTag:102];
    
    FCArticlePreview *aPreview = self.articles[indexPath.row];
    articleHeaderLabel.text = aPreview.articleHeader;
    articleThumbnailImageView.image = aPreview.articleThumbnail;
    articleSnippetLabel.text = aPreview.articleSnippet;
        
    return cell;
    
}

#pragma mark - UITablewViewDelegate


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ThumbnailCellSelectSegue"]) {
        NSIndexPath *selectedIndexPath = self.tableView.indexPathForSelectedRow;
        FCArticlePreview *aPreview = self.articles[selectedIndexPath.row];
        FCArticleViewController *articleViewController = segue.destinationViewController;
        articleViewController.articleHeader = aPreview.articleHeader;
        articleViewController.articleURL = aPreview.articleLink;
        
        [self.tableView deselectRowAtIndexPath:selectedIndexPath animated:YES];
    }
}

@end
