//
//  AppDelegate.swift
//  Swifty8
//
//  Created by Taylor Fausak on 6/7/14.
//  Copyright (c) 2014 Taylor Fausak. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    var game = Game()
                            
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
        game.move(Direction.Left)
    }

    @IBAction func downButtonPushed(sender : NSButton) {
        game.move(Direction.Down)
    }

    @IBAction func rightButtonPushed(sender : NSButton) {
        game.move(Direction.Right)
    }
    
    @IBAction func upButtonPushed(sender : NSButton) {
        game.move(Direction.Up)
    }
}

