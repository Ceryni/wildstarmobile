//
//  FCArticlePreview.h
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/2/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCArticlePreview : NSObject

@property (nonatomic, strong) NSString *articleHeader;
@property (nonatomic, strong) UIImage *articleThumbnail;
@property (nonatomic, strong) NSString *articleSnippet;
@property (nonatomic, strong) NSURL *articleLink;


- (id)initWith:(NSString *)header :(UIImage *)thumbnail :(NSString *)snippet :(NSURL *)link;
@end
