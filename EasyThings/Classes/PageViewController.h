//
//  PageViewController.h
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {    
    NSInteger _itemCountPerPage;
    NSInteger _itemWidth;
    NSInteger _itemGap;
    NSInteger _itemCount;
    NSInteger _itemGapRedundance;
    UITableView *_tableview;
}

@property(nonatomic, retain) IBOutlet UITableView *tableView;

- (void)initPage;
// method to overwrite
- (NSString *)customCellClassNameAtIndexPath:(NSIndexPath *)indexPath;
- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end
