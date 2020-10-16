//
//  ASuperDrone.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/19/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class ASuperDrone: ADrone {
    func beep() {
        AppLogger.logInfo(message: "Beep beep beep")
    }
    
    func spinRotors() {
        AppLogger.logInfo(message: "Rotors are spinning")
    }
    
    func takeOff() {
        AppLogger.logInfo(message: "Taking of the drone")
    }
}
