//
//  CardTableViewCell.m
//  PushBox
//
//  Created by Xie Hasky on 11-7-26.
//  Copyright 2011年 同济大学. All rights reserved.
//

#import "CardTableViewCell.h"

@implementation CardTableViewCell

- (void)dealloc
{
    NSLog(@"CardTableViewCell dealloc");
    [super dealloc];
}

- (void)awakeFromNib
{
    //NSLog(@"CardTableViewCell awakeFromNib");
    self.transform = CGAffineTransformRotate(self.transform, M_PI_2);
}


@end
