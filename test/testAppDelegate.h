//
//  testAppDelegate.h
//  test
//
//  Created by Sam Mussell on 4/24/11.
//  Copyright 2011 sammussell.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface testAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
