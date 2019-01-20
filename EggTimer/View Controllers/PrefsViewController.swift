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
        showExistingPrefs()
    }
    
    @IBAction func popupValueChanged(_ sender: NSPopUpButton) {
        if sender.selectedItem?.title == "Custom" {
            customTimeSlider.isEnabled = true
            return
        }
        
        let newTimerDuration = sender.selectedTag()
        customTimeSlider.integerValue = newTimerDuration
        showSliderValueAsText()
        customTimeSlider.isEnabled = false
    }
    
    @IBAction func sliderValueChanged(_ sender: NSSlider) {
        showSliderValueAsText()
    }
    
    @IBAction func cancelButtonClicked(_ sender: Any) {
        view.window?.close()
    }
    
    @IBAction func okButtonClicked(_ sender: Any) {
        saveNewPrefs()
        view.window?.close()
    }
    
    var prefs = Preferenecs()
    
    func showExistingPrefs() {
        let selectedTimeInMinutes = Int(prefs.selectedTime) / 60
        
        customTimeSlider.isEnabled = true
        for item in presetsPopup.itemArray {
            if item.tag == selectedTimeInMinutes {
                presetsPopup.select(item)
                customTimeSlider.isEnabled = false
                break
            }
        }
        if customTimeSlider.isEnabled {
            presetsPopup.selectItem(withTitle: "Custom")
        }
        
        customTimeSlider.integerValue = selectedTimeInMinutes
        showSliderValueAsText()
    }
    
    func showSliderValueAsText() {
        let newTimerDuration = customTimeSlider.integerValue
        let minutesDescription = (newTimerDuration == 1) ? "minute" : "minutes"
        customTimeField.stringValue = "\(newTimerDuration) \(minutesDescription)"
    }
    
    func saveNewPrefs() {
        prefs.selectedTime = customTimeSlider.doubleValue * 60
        NotificationCenter.default.post(name: Notification.Name(rawValue: "PrefsChanged"), object: nil)
    }
}
