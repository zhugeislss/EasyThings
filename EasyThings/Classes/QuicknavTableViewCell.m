//
//  QuicknavTableViewCell.m
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import "QuicknavTableViewCell.h"

@implementation QuicknavTableViewCell
@synthesize nameLabel = _nameLable;
@synthesize iconImageView = _iconImageView;

- (void)dealloc
{
    NSLog(@"QuicknavTableViewCell dealloc");
    [_nameLable release];
    [_iconImageView release];
    [super dealloc];
}

- (void)awakeFromNib
{
    self.transform = CGAffineTransformRotate(self.transform, M_PI_2);
    self.nameLabel.font = [UIFont fontWithName:@"MV Boli" size:18.0f];
}

@end
