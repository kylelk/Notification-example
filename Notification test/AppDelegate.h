//
//  AppDelegate.h
//  Notification test
//
//  Created by Kyle on 11/2/13.
//  Copyright (c) 2013 Kyle kersey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

//@interface AppDelegate : NSObject <NSApplicationDelegate>
@interface AppDelegate : NSObject <NSApplicationDelegate, NSUserNotificationCenterDelegate>

@property (weak) IBOutlet NSTextField *nTitle;
@property (weak) IBOutlet NSTextField *nMessage;
-(IBAction)showNotification:(id)sender;

@property (assign) IBOutlet NSWindow *window;

@end
