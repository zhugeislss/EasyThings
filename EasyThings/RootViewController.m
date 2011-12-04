//
//  RootViewController.m
//  EasyThings
//
//  Created by Blue Bitch on 11-9-23.
//  Copyright 2011年 TJU. All rights reserved.
//

#import "RootViewController.h"
#import "CardTableViewController.h"
#import "QuicknavTableViewController.h"

@implementation RootViewController

@synthesize managedObjectContext = __managedObjectContext;
@synthesize cardTableViewController = _cardTableViewController;
@synthesize quicknavTableViewController = _quicknavTableViewController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [__managedObjectContext release];
    [_cardTableViewController release];
    [_quicknavTableViewController release];
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Set up the edit and add buttons.
    _cardTableViewController.view.frame = CGRectMake(0, -39, 1024, 700);
    [self.view addSubview:_cardTableViewController.view];
    _quicknavTableViewController.view.frame = CGRectMake(0, 620, 1024, 200);
    [self.view addSubview:_quicknavTableViewController.view];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return interfaceOrientation == UIDeviceOrientationLandscapeRight || interfaceOrientation == UIDeviceOrientationLandscapeLeft;
}

@end
