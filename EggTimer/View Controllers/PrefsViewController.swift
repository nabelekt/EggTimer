//
//  PrefsViewController.swift
//  EggTimer
//
//  Created by Thomas Nabelek on 12/2/18.
//  Copyright © 2018 Thomas Nabelek. All rights reserved.
//

import Cocoa

class PrefsViewController: NSViewController {
    
    @IBOutlet weak var presetsPopup: NSPopUpButton!
    @IBOutlet weak var customTimeSlider: NSSlider!
    @IBOutlet weak var customTimeField: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func popupValueChanged(_ sender: Any) {
    }
    @IBAction func sliderValueChanged(_ sender: Any) {
    }
    @IBAction func cancelButtonClicked(_ sender: Any) {
    }
    @IBAction func okButtonClicked(_ sender: Any) {
    }
    
}
