//
//  FMPizzaFactory.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/17/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

enum FMPizzaType {
    case Cheese
    case Veggie
    case Clam
    case Pepperoni
    case Unknown
}

class FMPizzaFactory {
    private init() {}
    
    static func createPizza(_ item: FMPizzaType) -> FMPizza? {
        var pizza: FMPizza? = nil
        switch item {
        case .Cheese:
            pizza = FMNYStyleCheesePizza()
        case .Veggie:
            pizza = FMNYStyleVeggiePizza()
        case .Clam:
            pizza = FMNYStyleClamPizza()
        case .Pepperoni:
            pizza = FMNYStylePepperoniPizza()
        case .Unknown:
            print("Pizza type Unknown")
            fallthrough
        @unknown default:
            print("Pizza type unknown. Can't make...")
        }
        
        pizza?.prepare()
        pizza?.bake()
        pizza?.cut()
        pizza?.box()
        return pizza
    }
}
