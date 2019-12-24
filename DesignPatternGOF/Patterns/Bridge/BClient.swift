//
//  BClient.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/24/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

/// Except for the initialization phase, where an Abstraction object gets linked
/// with a specific Implementation object, the client code should only depend on
/// the Abstraction class. This way the client code can support any abstraction-
/// implementation combination.
class BClient {
    private init() {}

    class func volumeDown(_ remote: BRemoteControl) {
        remote.volumeDown()
    }
    class func volumeUp(_ remote: BRemoteControl) {
        remote.volumeUp()
    }
    class func channelUp(_ remote: BRemoteControl) {
        remote.channelUp()
    }
    class func channelDown(_ remote: BRemoteControl) {
        remote.channelDown()
    }
    class func togglePower(_ remote: BRemoteControl) {
        remote.togglePower()
    }

    //Only takes advance functions
    class func mute(_ remote: BAdvancedRemoteControl) {
        remote.mute()
    }
}
