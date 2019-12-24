//
//  BDevice.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/23/19.
//  Copyright © 2019 Anjan. All rights reserved.
//


/// The "implementation" interface declares methods common to all
/// concrete implementation classes. It doesn't have to match the
/// abstraction's interface. In fact, the two interfaces can be
/// entirely different. Typically the implementation interface
/// provides only primitive operations, while the abstraction
/// defines higher-level operations based on those primitives.
protocol BDevice {
    var enable: Bool { get set }
    var volume: Int { get }
    var channel: Int { get }

    func isEnabled() -> Bool
    func setVolume(_ percent: Int)
    func setChannel(_ channel: Int)
    
    //optional
    func toString() -> String
}

extension BDevice {
    func toString() -> String {
        return "\(BDevice.self) - Enabled: \(enable), Volume: \(volume), Channel: \(channel)"
    }
}
