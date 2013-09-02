//
//  FCFirstViewController.h
//  WildstarMobile
//
//  Created by Matthew Fitzpatrick on 9/1/13.
//  Copyright (c) 2013 Matthew Fitzpatrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FCNewsViewController : UIViewController
<
UITableViewDataSource,
UITableViewDelegate
>

@property (nonatomic, strong) NSMutableArray *articles;

@end
