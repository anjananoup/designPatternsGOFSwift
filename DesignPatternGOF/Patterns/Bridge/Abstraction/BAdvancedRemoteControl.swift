//
//  BAdvancedRemoteControl.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/23/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class BAdvancedRemoteControl: BRemoteControl {
    func mute() {
        self.device.setVolume(0)
    }
}
