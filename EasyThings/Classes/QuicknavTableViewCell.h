//
//  QuicknavTableViewCell.h
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuicknavTableViewCell : UITableViewCell {
    UILabel *_nameLable;
    UIImageView *_iconImageView;
}

@property (nonatomic, retain) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) IBOutlet UIImageView *iconImageView;

@end
