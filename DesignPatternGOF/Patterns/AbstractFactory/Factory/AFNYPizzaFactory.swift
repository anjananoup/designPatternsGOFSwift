//
//  AFNYPizzaFactory.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFNYPizzaFactory: AFPizzaFactory {
    func createPizza(_ type: AFPizzaType) -> AFPizza? {
        switch type {
        case .Cheese:
            return AFNYStyleCheesePizza()
        case .Veggie:
            return AFNYStyleVeggiePizza()
        case .Clam:
            return AFNYStyleClamPizza()
        case .Pepperoni:
            return AFNYStylePepperoniPizza()
        case .Unknown:
            print("Pizza type Unknown")
            fallthrough
        @unknown default:
            print("Pizza type unknown. Can't make...")
            return nil
        }
    }
}
