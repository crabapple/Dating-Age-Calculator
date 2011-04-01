//
//  DatingAgeCalcAppDelegate.m
//  DatingAgeCalc
//
//  Created by Daniel Siders on 10/8/09.
//  Copyright __Apollic Software, LLC__ 2009. All rights reserved.
//

#import "DatingAgeCalcAppDelegate.h"
#import "DatingAgeCalcViewController.h"

@implementation DatingAgeCalcAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
