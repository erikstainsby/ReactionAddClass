//
//  ReactionAddClass.m
//  ReactionAddClass
//
//  Created by Erik Stainsby on 12-02-18.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionAddClass.h"

@implementation ReactionAddClass

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil]))
    {
		[self setPluginName: @"Add Class"];
    }
    return self;
}

- (NSString *) callback {
	return [NSString stringWithFormat:@"$('%@').addClass('%@')",[[self targetField] stringValue],[[self deltaField] stringValue]];
}


@end
