//
//  BRemoteControl.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/23/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

/// The "abstraction" defines the interface for the "control"
/// part of the two class hierarchies. It maintains a reference
/// to an object of the "implementation" hierarchy and delegates
/// all of the real work to this object.

class BRemoteControl {
    private(set) var device: BDevice

    init(_ device: BDevice) {
        self.device = device
    }

    func togglePower() {
        if (device.isEnabled()) {
            device.enable = false
        } else {
            device.enable = true
        }
    }

    func volumeDown() {
        if (device.isEnabled()) {
            device.setVolume(device.volume - 10)
        }
    }

    func volumeUp() {
        if (device.isEnabled()) {
            device.setVolume(device.volume + 10)
        }
    }

    func channelDown() {
        if (device.isEnabled()) {
            device.setChannel(device.channel - 1)
        }
    }

    func channelUp() {
        if (device.isEnabled()) {
            device.setChannel(device.channel + 1)
        }
    }
}
