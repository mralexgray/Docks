//
//  SDDocksIntroWindowController.m
//  Docks
//
//  Created by Steven Degutis on 8/1/09.
//  Copyright 2009 8th Light, Inc.. All rights reserved.
//

#import "SDDocksIntroWindowController.h"


@implementation SDDocksIntroWindowController

- (id) init {
	if (self = [super initWithWindowNibName:@"DocksIntroWindow"]) {
		
	}
	return self;
}

- (void) showWindow:(id)sender {
	if ([[self window] isVisible] == NO)
		[[self window] center];
	
	[super showWindow:sender];
}

- (void) windowDidLoad {
	[[self window] setContentAspectRatio:NSMakeSize(960,600)];
	
	[movieView setStepButtonsVisible:NO];
	[movieView setVolumeButtonVisible:NO];
	[movieView setCustomButtonVisible:NO];
	[movieView setBackButtonVisible:NO];
	[movieView setHotSpotButtonVisible:NO];
	[movieView setTranslateButtonVisible:NO];
	[movieView setZoomButtonsVisible:NO];
	
	NSError *error = nil;
	QTMovie *movie = [QTMovie movieNamed:@"UsingDocks" error:&error];
	
	if (movie)
		[movieView setMovie:movie];
	else
		[self close];
}

@end
