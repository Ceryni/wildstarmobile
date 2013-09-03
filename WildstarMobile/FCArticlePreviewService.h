//
//  FCArticlePreviewService.h
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/2/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FCConstants.h"
#import "TFHpple.h"
#import "FCArticlePreview.h"
@interface FCArticlePreviewService : NSObject 

- (NSArray *)scanArticlePreviewsOn :(NSInteger)page;

@property (nonatomic, strong) NSMutableArray *returnMe;
@end
