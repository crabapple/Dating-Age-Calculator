//
//  DrawView.m
//  SolarWheatherApp1
//
//  Created by Manuel A. Rodriguez on 10/5/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "DrawView.h"


@implementation DrawView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect 
{
    // Drawing code
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetLineWidth(context, 2.0f);
	CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
	CGContextMoveToPoint(context, 100.0f, 100.0f);
	CGContextAddLineToPoint(context, 200.0f, 200.0f);
	CGContextStrokePath(context);
	
}


- (void)dealloc {
    [super dealloc];
}


@end
