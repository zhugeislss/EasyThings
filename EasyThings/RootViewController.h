//
//  RootViewController.h
//  EasyThings
//
//  Created by Blue Bitch on 11-9-23.
//  Copyright 2011年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@class CardTableViewController;
@class QuicknavTableViewController;
@interface RootViewController : UIViewController {
    IBOutlet CardTableViewController *_cardTableViewController;
    IBOutlet QuicknavTableViewController *_quicknavTableViewController;
}

@property (retain, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (retain, nonatomic) CardTableViewController *cardTableViewController;
@property (retain, nonatomic) QuicknavTableViewController *quicknavTableViewController;

@end
