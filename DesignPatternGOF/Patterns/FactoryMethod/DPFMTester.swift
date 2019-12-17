//
//  DPFMTester.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/17/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class DPFMTester: DPTester {
    func doSomething() {
        var pizza = FMPizzaFactory.createPizza(.Cheese)
        print("Anjan ordered a \(String(describing: pizza?.name))")
        
        pizza = FMPizzaFactory.createPizza(.Clam)
        print("Pritam ordered a \(String(describing: pizza?.name))")
    }
}
