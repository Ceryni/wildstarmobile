//
//  FCArticleViewController.h
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/3/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FCArticleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *articleBodyTextView;

@property (strong, nonatomic) NSString *articleHeader;
@property (strong, nonatomic) NSString *articleURL;

@end
