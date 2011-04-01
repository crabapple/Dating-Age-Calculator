//
//  DatingAgeCalcAppDelegate.h
//  DatingAgeCalc
//
//  Created by Daniel Siders on 10/8/09.
//  Copyright __Apollic Software, LLC__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DatingAgeCalcViewController;

@interface DatingAgeCalcAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DatingAgeCalcViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DatingAgeCalcViewController *viewController;

@end

