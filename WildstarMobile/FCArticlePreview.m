//
//  FCArticlePreview.m
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/2/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import "FCArticlePreview.h"

@implementation FCArticlePreview

- (id)initWith:(NSString *)header :(UIImage *)thumbnail :(NSString *)snippet :(NSURL *)link
{
    self = [super init];
    if(self){
        self.articleHeader = header;
        self.articleThumbnail = thumbnail;
        self.articleSnippet = snippet;
        self.articleLink = link;
    }
    return self;
}

@end
