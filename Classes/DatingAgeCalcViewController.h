//
//  DatingAgeCalcViewController.h
//  DatingAgeCalc
//
//  Created by Daniel Siders on 10/8/09.
//  Copyright __Apollic Software, LLC__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kSwitchesSegmentIndex 0

@interface DatingAgeCalcViewController : UIViewController {
	UITextField *yourAge;
	UITextField *theirAge;
	UILabel *minAge;
	UILabel *maxAge;
	UILabel *myOkay;
	UISegmentedControl *modeBar;
	UIImageView *hearts;
	
}

@property (nonatomic, retain) IBOutlet UITextField *yourAge;
@property (nonatomic, retain) IBOutlet UITextField *theirAge;
@property (nonatomic, retain) IBOutlet UILabel *minAge;
@property (nonatomic, retain) IBOutlet UILabel *maxAge;
@property (nonatomic, retain) IBOutlet UILabel *myOkay;
@property (nonatomic, retain) IBOutlet UISegmentedControl *modeBar;
@property (nonatomic, retain) IBOutlet UIImageView *hearts;



- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)areWeCool:(id)sender;
@end

