//
//  ADroneAdapter.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/19/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class ADroneAdapter: ADuck {
    let drone: ADrone

    init(_ drone: ADrone) {
        self.drone = drone
    }
    
    func quack() {
        drone.beep()
    }
    
    func fly() {
        drone.spinRotors()
        drone.takeOff()
    }
}
