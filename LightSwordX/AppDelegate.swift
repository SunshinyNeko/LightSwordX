//
//  AppDelegate.swift
//  LightSwordX
//
//  Created by Neko on 12/17/15.
//  Copyright © 2015 Neko. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        let window = NSApplication.sharedApplication().windows.last
        window?.center()
        
        // Insert code here to initialize your application
        
        if let button = statusItem.button {
            button.image = NSImage(named: "TrayIcon")
        }
        
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Open Window", action: Selector("openWindow:"), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Exit", action: Selector("exit:"), keyEquivalent: ""))
        
        statusItem.menu = menu
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSSquareStatusItemLength)
    
    func openWindow(sender: NSMenuItem) {
        NSApplication.sharedApplication().windows.last!.makeKeyAndOrderFront(nil)
        NSApplication.sharedApplication().activateIgnoringOtherApps(true)
    }
    
    func exit(sender: NSMenuItem) {
        NSApplication.sharedApplication().terminate(self)
    }
}

