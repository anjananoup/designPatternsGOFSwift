//
//  DPFMTester.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/17/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class DPFMTester: DPTester {
    func startTesting() {
        var pizza = FMPizzaFactory.createPizza(.Cheese)
        AppLogger.logInfo(message: "Anjan ordered a \(String(describing: pizza?.name))")
        
        pizza = FMPizzaFactory.createPizza(.Clam)
        AppLogger.logInfo(message: "Pritam ordered a \(String(describing: pizza?.name))")
    }
}
