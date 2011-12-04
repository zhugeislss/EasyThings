//
//  PageViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 11-12-4.
//  Copyright (c) 2011年 TJU. All rights reserved.
//

#import "PageViewController.h"

@implementation PageViewController

@synthesize tableView = _tableView;

- (void)dealloc 
{
    [_tableView release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.tableView = nil;
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.pagingEnabled = YES;
	CGRect oldFrame = self.tableView.frame;
    self.tableView.transform = CGAffineTransformMakeRotation(-M_PI_2);
	self.tableView.frame = oldFrame;
	self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)initPage {
    _itemGap = (1024 - _itemCountPerPage * _itemWidth) / (_itemCountPerPage + 1);
    _itemGapRedundance = (1024 - _itemCountPerPage * _itemWidth) % (_itemCountPerPage + 1);
}

- (int)numberOfRows
{
    return [self.tableView numberOfRowsInSection:0];
}

- (NSString *)customCellClassNameAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger count = _itemCount;
    count += _itemCountPerPage - count % _itemCountPerPage;
    return count;
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    NSInteger row = indexPath.row;
    if(row >= _itemCount) {
        cell.hidden = YES;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger row = indexPath.row;
    NSInteger result;
    if((row + 1) % _itemCountPerPage == 0) {
        result = _itemWidth + _itemGap * 2 + _itemGapRedundance;
    }
    else {
        result = _itemWidth + _itemGap;
    }
    return result;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *name = [self customCellClassNameAtIndexPath:indexPath];
    NSString *CellIdentifier = name ? name : @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        if (name) {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:name owner:self options:nil];
            cell = [nib lastObject];
        }
        else {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            [cell autorelease];
        }
    }
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

@end
