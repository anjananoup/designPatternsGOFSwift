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
        print("Anjan Ordered a \(String(describing: pizza?.name))")
        pizza = AFPizzaProducer.getPizzaFactory(.NY)?.orderPizza(.Cheese)
        print("Susmi Ordered a \(String(describing: pizza?.name))")
        
        pizza = AFPizzaProducer.getPizzaFactory(.BD)?.orderPizza(.Unknown)
        print("Pritam vai Ordered a \(String(describing: pizza?.name))")
        pizza = AFPizzaProducer.getPizzaFactory(.NY)?.orderPizza(.Unknown)
        print("Taposhi Apu Ordered a \(String(describing: pizza?.name))")
    }
}
