//
//  DPATester.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/19/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class DPATester: DPTester {
    func startTesting() {
        let mallaredDuck = AMallardDuck()
        testDuck(mallaredDuck)

        print("------Adapting Turkey------")

        let turkeyAdapter = ATurkeyAdapter(AWildTurkey())
        testDuck(turkeyAdapter)
        
        print("------Adapting Drone------")
        
        let droneAdapter = ADroneAdapter(ASuperDrone())
        testDuck(droneAdapter)
    }
    
    private func testDuck(_ duck: ADuck) {
        duck.quack()
        duck.fly()
    }
}
