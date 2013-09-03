//
//  FCArticlePreview.h
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/2/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCArticlePreview : NSObject

@property (copy) NSString *articleHeader;
@property (copy) UIImage *articleThumbnail;
@property (copy) NSString *articleSnippet;
@property (copy) NSString *articleLink;


- (id)initWithHeader:(NSString *)header Thumbnail:(UIImage *)thumbnail Snippet:(NSString *)snippet Link:(NSString *)link;
@end
