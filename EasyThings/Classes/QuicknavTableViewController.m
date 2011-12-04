//
//  QuicknavTableViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import "QuicknavTableViewController.h"
#import "QuicknavTableViewCell.h"

#define kItemWidth 80

@implementation QuicknavTableViewController

- (void)dealloc {
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    _itemCountPerPage = 9;
    _itemWidth = kItemWidth;
    _itemCount = 5;
    [self initPage];
}

- (NSString *)customCellClassNameAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row < _itemCount)
        return @"QuicknavTableViewCell";
    else
        return nil;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    [super configureCell:cell atIndexPath:indexPath];
    QuicknavTableViewCell *quicknavCell = (QuicknavTableViewCell *)cell;
    switch (indexPath.row) {
        case 0:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_cal.png"];
            quicknavCell.nameLabel.text = @"Calendar";
            break;
        case 1:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_today.png"];
            quicknavCell.nameLabel.text = @"Today";
            break;
        case 2:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_all_cat.png"];
            quicknavCell.nameLabel.text = @"All Category";
            break;
        case 3:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_search.png"];
            quicknavCell.nameLabel.text = @"Search";
            break;
        case 4:
            quicknavCell.iconImageView.image = [UIImage imageNamed:@"icon_setting.png"];
            quicknavCell.nameLabel.text = @"Setting";
            break;
        default:
            break;
    }
}

@end
