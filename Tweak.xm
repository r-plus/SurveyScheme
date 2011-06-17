static inline void Alert(NSString *message)
{
	// Helper function
	UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"SurveyScheme" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[av show];
	[av release];
}

%hook SBAppToAppTransitionView

-(id)_rotationValueFunction
{
	%log;
	Alert(%orig);
	return %orig;
}

%end

%hook UIApplication

- (BOOL)canOpenURL:(NSURL *)url
{
	NSLog(@"------------UIApplication_canOpenURL-----------");
	%log;
	return %orig;
}

- (BOOL)openURL:(NSURL *)url
{
	NSLog(@"------------UIApplication_openURL-----------");
	%log;
	return %orig;
}

- (void)applicationOpenURL:(NSURL *)url
{
	NSLog(@"------------UIApplication_applicationOpenURL-----------");
	%log;
	return %orig;
}
%end

%hook SpringBoard

- (void)applicationOpenURL:(NSURL *)url
{
	NSLog(@"------------SpringBoard_applicationOpenURL-----------");
	%log;
	return %orig;
}

- (void)applicationOpenURL:(NSURL *)url publicURLsOnly:(BOOL)only
{
	NSLog(@"------------SpringBoard_applicationOpenURL:publishURLsOnly-----------");
	%log;
	return %orig;
}
%end

