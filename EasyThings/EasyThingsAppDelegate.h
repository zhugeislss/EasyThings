//
//  EasyThingsAppDelegate.h
//  EasyThings
//
//  Created by Blue Bitch on 11-9-23.
//  Copyright 2011年 TJU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EasyThingsAppDelegate : UIResponder <UIApplicationDelegate>

@property (retain, nonatomic) IBOutlet UIWindow *window;

@property (retain, readonly, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (retain, readonly, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (retain, readonly, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
