//
//  AppDelegate.swift
//  EggTimer
//
//  Created by Thomas Nabelek on 12/2/18.
//  Copyright © 2018 Thomas Nabelek. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        enableMenus(start: true, stop: false, reset: false)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @IBOutlet weak var startTimerMenuItem: NSMenuItem!
    
    @IBOutlet weak var stopTImerMenuItem: NSMenuItem!
    
    @IBOutlet weak var resetTimerMenuItem: NSMenuItem!
    
    func enableMenus(start: Bool, stop: Bool, reset: Bool) {
        startTimerMenuItem.isEnabled = start
        stopTImerMenuItem.isEnabled = stop
        resetTimerMenuItem.isEnabled = reset
    }

}

