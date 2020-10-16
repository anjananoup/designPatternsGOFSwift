//
//  DPAFTester.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class DPAFTester: DPTester {
    func startTesting() {
        var pizza = AFPizzaProducer.getPizzaFactory(.BD)?.orderPizza(.Cheese)
        AppLogger.logInfo(message: "Anjan Ordered a \(String(describing: pizza?.name))")
        pizza = AFPizzaProducer.getPizzaFactory(.NY)?.orderPizza(.Cheese)
        AppLogger.logInfo(message: "Susmi Ordered a \(String(describing: pizza?.name))")
        
        pizza = AFPizzaProducer.getPizzaFactory(.BD)?.orderPizza(.Unknown)
        AppLogger.logInfo(message: "Pritam vai Ordered a \(String(describing: pizza?.name))")
        pizza = AFPizzaProducer.getPizzaFactory(.NY)?.orderPizza(.Unknown)
        AppLogger.logInfo(message: "Taposhi Apu Ordered a \(String(describing: pizza?.name))")
    }
}
