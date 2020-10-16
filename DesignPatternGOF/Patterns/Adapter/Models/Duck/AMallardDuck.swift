//
//  AMallardDuck.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/19/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AMallardDuck: ADuck {
    func quack() {
        AppLogger.logInfo(message: "Quack Quack")
    }
    
    func fly() {
        AppLogger.logInfo(message: "I'm Flying...")
    }
}
