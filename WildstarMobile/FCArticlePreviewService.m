//
//  FCArticlePreviewService.m
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/2/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import "FCArticlePreviewService.h"

@implementation FCArticlePreviewService


- (NSArray *)scanArticlePreviewsOn :(NSInteger)page
{
    NSMutableArray *articlePreviews = [NSMutableArray array];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@/#page%d", FCBaseURL, FCLanguageEN, page]];

    NSData *data = [NSData dataWithContentsOfURL:url];

    TFHpple *parser = [TFHpple hppleWithHTMLData:data];

    NSString *articleXpathQuery = @"//div[@class='article']";
    NSArray *articleNodes = [parser searchWithXPathQuery:articleXpathQuery];
    for (TFHppleElement *node in articleNodes){
        
        NSString *articleHeader = [[[node firstChildWithTagName:@"h2"] firstChild] text];
        NSLog(@"%@",  articleHeader);

        NSString *articleThumbnailURL = [NSString stringWithFormat:@"%@%@", FCBaseURL, [[[node firstChildWithClassName:@"article-thumb"] firstChildWithTagName:@"img"] objectForKey:@"src"]];
        
        NSLog(@"%@",  articleThumbnailURL);

        NSData *articleThumbnailData = [NSData dataWithContentsOfURL:[NSURL URLWithString:articleThumbnailURL]];
        UIImage *articleThumbnail = [UIImage imageWithData:articleThumbnailData];
        
        NSString *articleSnippet = [[node firstChildWithTagName:@"p"] text];
        NSLog(@"%@",  articleSnippet);
        
        NSString *articleLink = [NSString stringWithFormat:@"%@%@", FCBaseURL, [[[node firstChildWithTagName:@"h2"] firstChild] objectForKey:@"href"]];
        NSLog(@"%@", articleLink);

        FCArticlePreview *aPreview = [[FCArticlePreview alloc] initWithHeader:articleHeader Thumbnail:articleThumbnail Snippet:articleSnippet Link:articleLink];
        
        [articlePreviews addObject:aPreview];
    }
    
    return articlePreviews;
}

@end
