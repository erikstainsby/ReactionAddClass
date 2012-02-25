//
//  ReactionAddClass.m
//  ReactionAddClass
//
//  Created by Erik Stainsby on 12-02-18.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionAddClass.h"

@implementation ReactionAddClass

@synthesize addClassField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil]))
    {
		[self setName: @"Add Class"];
    }
    return self;
}

- (BOOL) hasSelectorField {
	return YES;
}

- (NSString *) reactionBehaviour {
	return [NSString stringWithFormat:@".addClass('%@')",[addClassField stringValue]];
}

- (NSString *) callbackFunction {
	
	NSString * myFunc = @"";
	if( [[[self selectorField] stringValue] isEqualToString:@"this"] ) {
		myFunc = @"$(this)";
	}
	else {
		myFunc = [myFunc stringByAppendingFormat:@"$('%@')", [[self selectorField] stringValue]];
	}
	myFunc = [myFunc stringByAppendingString: [self reactionBehaviour]];
	
	return [NSString stringWithFormat:@"function(event,elem){%@}", myFunc];
}

@end
