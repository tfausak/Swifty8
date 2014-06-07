//
//  AppDelegate.swift
//  Swifty8
//
//  Created by Taylor Fausak on 6/7/14.
//  Copyright (c) 2014 Taylor Fausak. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet var window: NSWindow

    @IBOutlet var leftButton : NSButton
    @IBOutlet var downButton : NSButton
    @IBOutlet var rightButton : NSButton
    @IBOutlet var upButton : NSButton

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }

    @IBAction func leftButtonPushed(sender : NSButton) {
    }

    @IBAction func downButtonPushed(sender : NSButton) {
    }

    @IBAction func rightButtonPushed(sender : NSButton) {
    }
    
    @IBAction func upButtonPushed(sender : NSButton) {
    }
}

