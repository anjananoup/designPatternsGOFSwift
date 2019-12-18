//
//  AFPizzaFactory.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

enum AFPizzaType {
    case Cheese
    case Veggie
    case Clam
    case Pepperoni
    case Unknown
}

/// The abstract factory interface declares a set of methods that
/// return different abstract products.
protocol AFPizzaFactory {
    func createPizza(_ type: AFPizzaType) -> AFPizza?
    func orderPizza(_ type: AFPizzaType) -> AFPizza?
}

///Default implementation
extension AFPizzaFactory {
    func orderPizza(_ type: AFPizzaType) -> AFPizza? {
        let pizza = createPizza(type)
        print("---- Making a \(String(describing: pizza?.name)) ----")
        pizza?.prepare()
        pizza?.bake()
        pizza?.cut()
        pizza?.box()
        return pizza
    }
}
