//
//  DPBTester.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/24/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class DPBTester: DPTester {
    func startTesting() {
        let tv = BTV()
        var remote = BRemoteControl(tv)
        print(remote.device.toString())
        
        BClient.channelDown(remote)
        BClient.volumeUp(remote)
        BClient.togglePower(remote)
        
        print(remote.device.toString())
        
        let radio = BRadio()
        remote = BAdvancedRemoteControl(radio)
        print(remote.device.toString())
        
        BClient.togglePower(remote)
        BClient.channelDown(remote)
        BClient.volumeUp(remote)
        if let advRemote = remote as? BAdvancedRemoteControl {
            BClient.mute(advRemote)
        }
        
        print(remote.device.toString())
    }
}
