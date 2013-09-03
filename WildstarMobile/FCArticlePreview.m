//
//  FCArticlePreview.m
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/2/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import "FCArticlePreview.h"

@implementation FCArticlePreview

- (id)initWithHeader:(NSString *)header Thumbnail:(UIImage *)thumbnail Snippet:(NSString *)snippet Link:(NSString *)link
{
    self = [super init];
    if(self){
        _articleHeader = header;
        _articleThumbnail = thumbnail;
        _articleSnippet = snippet;
        _articleLink = link;
    }
    return self;
}

@end
