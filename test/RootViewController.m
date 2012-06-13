//
//  RootViewController.m
//  test
//
//  Created by Sam Mussell on 4/24/11.
//  Copyright 2011 sammussell.com. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (void) addObjectToArr:(id)obj {
    [self insertObject:obj inArrAtIndex:[self.arr count]];
}

@synthesize arr;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Add observer
    [self addObserver:self forKeyPath:@"arr" options:0 context:@"myContext"];
    
    NSLog(@"setting arr...");
    self.arr = [NSMutableArray array];
    [self addObjectToArr:@"test"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    //View change
    NSLog(@"it changed: %@", [change objectForKey:NSKeyValueChangeKindKey]);
}

- (NSUInteger)countOfArr {
    return [self.arr count];
}

- (id)objectInArrAtIndex:(NSUInteger)index {
    return [self.arr objectAtIndex:index];
}

- (void)insertObject:(id)obj inArrAtIndex:(NSUInteger)index {
    [self.arr insertObject:obj atIndex:index];
}

- (void)removeObjectFromArrAtIndex:(NSUInteger)index {
    [self.arr removeObjectAtIndex:index];
}

- (void)replaceObjectInArrAtIndex:(NSUInteger)index withObject:(id)obj {
    [self.arr replaceObjectAtIndex:index withObject:obj];
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

#pragma mark boiler plate tableviewcontroller stuff

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    return cell;
}
@end
