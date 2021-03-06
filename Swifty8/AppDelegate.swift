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

    @IBOutlet var gridView : NSCollectionView
    
    @IBOutlet var scoreCell : NSTextFieldCell
    @IBOutlet var winnerField : NSTextField
    
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        updateView()
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }

    @IBAction func leftButtonPushed(sender : NSButton) {
        game.move(Direction.Left)
        updateView()
    }

    @IBAction func downButtonPushed(sender : NSButton) {
        game.move(Direction.Down)
        updateView()
    }

    @IBAction func rightButtonPushed(sender : NSButton) {
        game.move(Direction.Right)
        updateView()
    }
    
    @IBAction func upButtonPushed(sender : NSButton) {
        game.move(Direction.Up)
        updateView()
    }

    func updateView() {
        leftButton.enabled = game.canMove(Direction.Left)
        downButton.enabled = game.canMove(Direction.Down)
        rightButton.enabled = game.canMove(Direction.Right)
        upButton.enabled = game.canMove(Direction.Up)

        gridView.maxNumberOfRows = game.height
        gridView.maxNumberOfColumns = game.width

        // TODO: This is dumb. Why can't I just set the content to the list of
        // tiles?
        gridView.content = game.tiles.map { $0.description }

        scoreCell.title = "Score: \(game.score)"

        winnerField.hidden = !game.hasWon
    }
}

