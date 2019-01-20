//
//  Preferences.swift
//  EggTimer
//
//  Created by Thomas Nabelek on 1/19/19.
//  Copyright © 2019 Thomas Nabelek. All rights reserved.
//

import Foundation

struct Preferenecs {
    var selectedTime: TimeInterval {
        get {
            let savedTime = UserDefaults.standard.double(forKey: "selectedTime")
            if savedTime > 0 {
                return savedTime
            }
            return 360
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "selectedTime")
        }
    }
}
