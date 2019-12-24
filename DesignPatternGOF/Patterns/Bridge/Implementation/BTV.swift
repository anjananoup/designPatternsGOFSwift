//
//  BTV.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/23/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

// All devices follow the same interface.
class BTV: BDevice {
    var enable: Bool = false //default off state
    var volume: Int = 30 //default sound is 30
    var channel: Int = 0 //default channel is 0

    func isEnabled() -> Bool {
        return enable
    }

    func setVolume(_ percent: Int) {
        if percent > 100 {
            self.volume = 100
        } else if percent < 0 {
            self.volume = 0
        } else {
            self.volume = percent
        }
    }

    ///Set new channel
    func setChannel(_ channel: Int) {
        if channel < 0 {
            self.channel = 0
        } else {
            self.channel = channel
        }
    }
}
