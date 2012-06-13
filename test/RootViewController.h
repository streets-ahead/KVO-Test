//
//  RootViewController.h
//  test
//
//  Created by Sam Mussell on 4/24/11.
//  Copyright 2011 sammussell.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
    NSMutableArray* arr;
}

@property  NSMutableArray* arr;

- (NSUInteger)countOfArr;
- (id)objectInArrAtIndex:(NSUInteger)index;
- (void)insertObject:(id)obj inArrAtIndex:(NSUInteger)index;
- (void)removeObjectFromArrAtIndex:(NSUInteger)index;
- (void)replaceObjectInArrAtIndex:(NSUInteger)index withObject:(id)obj;


@end
