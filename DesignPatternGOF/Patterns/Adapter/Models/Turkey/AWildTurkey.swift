//
//  AWildTurkey.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/19/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AWildTurkey: ATurkey {
    func gobble() {
        AppLogger.logInfo(message: "Gobble Gobble")
    }
    
    func fly() {
        AppLogger.logInfo(message: "I'm flying slowwwww")
    }
}
