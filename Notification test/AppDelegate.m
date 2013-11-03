//
//  AppDelegate.m
//  Notification test
//
//  Created by Kyle on 11/2/13.
//  Copyright (c) 2013 Kyle kersey. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize nTitle;
@synthesize nMessage;

- (IBAction)showNotification:(id)sender{
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = [nTitle stringValue];
    notification.informativeText = [nMessage stringValue];
    notification.soundName = NSUserNotificationDefaultSoundName;
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [[NSUserNotificationCenter defaultUserNotificationCenter] setDelegate:self];
}
- (BOOL)userNotificationCenter:(NSUserNotificationCenter *)center shouldPresentNotification:(NSUserNotification *)notification{
    return YES;
}

@end
