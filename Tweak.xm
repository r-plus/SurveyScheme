%hook UIApplication

- (BOOL)canOpenURL:(NSURL *)url
{
	NSLog(@"------------canOpenURL-----------");
	%log;
	return %orig;
}

- (BOOL)openURL:(NSURL *)url
{
	NSLog(@"------------openURL-----------");
	%log;
	return %orig;
}
%end
