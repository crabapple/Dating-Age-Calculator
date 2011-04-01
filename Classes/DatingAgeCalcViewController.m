//
//  DatingAgeCalcViewController.m
//  DatingAgeCalc
//
//  Created by Daniel Siders on 10/8/09.
//  Copyright __Apollic Software, LLC__ 2009. All rights reserved.
//
#import "DatingAgeCalcViewController.h"


@implementation DatingAgeCalcViewController
@synthesize yourAge;
@synthesize theirAge;
@synthesize minAge;
@synthesize maxAge;
@synthesize myOkay;
@synthesize modeBar;
@synthesize hearts;
//@synthesize selectedSegmentIndex;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/




- (IBAction)textFieldDoneEditing:(id)sender{
	[sender resignFirstResponder];
}
- (IBAction)backgroundTap:(id)sender{
	[yourAge resignFirstResponder];
	[theirAge resignFirstResponder];
}



- (IBAction)areWeCool:(id)sender{
	//NSLog(@"areWeCool launched");
	float yourFloat = [yourAge.text floatValue];
	float theirFloat = [theirAge.text floatValue];
	minAge.text = [NSString stringWithFormat:@" "];
	maxAge.text = [NSString stringWithFormat:@" "];
	UIImage *heart = [UIImage imageNamed:@"heartfinal.png"];
	UIImage *question = [UIImage imageNamed:@"question.png"];
	UIImage *heartbroken = [UIImage imageNamed:@"heartbreakfinal.png"];
	UIImage *bars = [UIImage imageNamed:@"jailbaitfinal.png"];
	UIImage *toys = [UIImage imageNamed:@"ballfinal.png"];
	float nMin = ((yourFloat/2)+7);
	//NSLog(@"nMin natural %f", nMin);
	if (nMin <16){
		nMin = 16;
	}
	//NSLog(@"nMin mod %f", nMin);
	float nMax = (2*(yourFloat-7));
	//NSLog(@"nMax natural %f", nMax);
	if (nMax <16){
		nMax = 16;
	}
	//NSLog(@"nMax mod %f", nMax);
	float cMin = ((yourFloat/2)+2);
	//NSLog(@"cMin natural %f", cMin);
	if (cMin <16){
		cMin = 16;
	}
	//NSLog(@"cMin mod %f", cMin);
	float cMax = (2*(yourFloat-2));
	//NSLog(@"cMax natural %f", cMax);
	if (cMax <16){
		cMax = 16;
	}
	//NSLog(@"cMax mod %f", cMax);
	float dMin = (16);
	//NSLog(@"dMin natural %f", dMin);
	float dMax = (100);
	//NSLog(@" dMax natural %f", dMax);
	//NSLog(@" yourFloat %f", yourFloat);
		if (yourFloat >= 16) {
				//NSLog(@"You're over 16");
				if (modeBar.selectedSegmentIndex == 0) {
					//NSLog(@"you're normative");
					//NSLog(@" theirFloat %f", theirFloat);
					minAge.text = [NSString stringWithFormat:@"%.1f", nMin];
					maxAge.text = [NSString stringWithFormat:@"%.1f", nMax];
					myOkay.text = @" ";
					hearts.image = question;
					if ((theirFloat != 0) && (theirFloat <16)) {
						myOkay.text = @"Jailbait.";
						hearts.image = bars;
						//NSLog(@"jailbait");
					}
					else if ((theirFloat >= nMin) && (theirFloat <= nMax)) {
						myOkay.text = @"That's cool.";
						hearts.image = heart;
						//NSLog(@"that's cool-0");
					}
					else if (theirFloat > nMax){
						myOkay.text = @"They're too old.";
						hearts.image = heartbroken;
						//NSLog(@"they're too old-0");
					}
					else if ((theirFloat != 0) &&(theirFloat >=16) && (theirFloat <nMin) ){
						myOkay.text = @"They're too young.";
						hearts.image = heartbroken;
						//NSLog(@"they're too young-0");
					}
					else {
						myOkay.text = @" ";
					hearts.image = question;
					}
			
				}
				else if (modeBar.selectedSegmentIndex == 1) {
					minAge.text = [NSString stringWithFormat:@"%.1f", cMin];
					maxAge.text = [NSString stringWithFormat:@"%.1f", cMax];
					myOkay.text = @" ";
					//hearts.image = question;
					NSLog(@"COUGAR ALERT");
					if ((theirFloat != 0) && (theirFloat <16)) {
						myOkay.text = @"Jailbait.";
						hearts.image = bars;
					}
					else if ((theirFloat >= cMin) && (theirFloat <= cMax)) {
						myOkay.text = @"That's cool.";
						hearts.image = heart;
					}
					else if (theirFloat > cMax){
						myOkay.text = @"They're too old.";
						hearts.image = heartbroken;
					}
					else if ((theirFloat != 0) &&(theirFloat >=16) && (theirFloat <cMin) ){
						myOkay.text = @"They're too young.";
						hearts.image = heartbroken;
						//NSLog(@"they're too young-0");
					}
					else {
						myOkay.text = @" ";
						hearts.image = question;
					}
					
					
					
				}
				
				else if (modeBar.selectedSegmentIndex == 2) {
					minAge.text = [NSString stringWithFormat:@"%.1f", dMin];
					maxAge.text = [NSString stringWithFormat:@"%.1f", dMax];
					myOkay.text = @" ";
					hearts.image = question;
					if ((theirFloat != 0) && (theirFloat <16)) {
						myOkay.text = @"Jailbait.";
						hearts.image = bars;
					}
					else if ((theirFloat >= cMin) && (theirFloat <= dMax)) {
						myOkay.text = @"That's cool.";
						hearts.image = heart;
					}
	
					
				}
			}
	if (yourFloat < 16){
		myOkay.text = @"You're too young.";
		hearts.image = toys;
		//NSLog(@"you're underage");
	}
	
		
	}
		


	


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[yourAge release];
	[theirAge release];
	[minAge release];
	[maxAge release];
	[myOkay release];
	[modeBar release];
	[hearts release];
//	[selectedSegmentIndex release];
    [super dealloc];
}

@end
