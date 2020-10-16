//
//  AFBDPizzaFactory.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFBDPizzaFactory: AFPizzaFactory {
    func createPizza(_ type: AFPizzaType) -> AFPizza? {
        switch type {
        case .Cheese:
            return AFBDStyleCheesePizza()
        case .Veggie:
            return AFBDStyleVeggiePizza()
        case .Clam:
            return AFBDStyleClamPizza()
        case .Pepperoni:
            return AFBDStylePepperoniPizza()
        case .Unknown:
            AppLogger.logInfo(message: "Pizza type Unknown")
            fallthrough
        @unknown default:
            AppLogger.logInfo(message: "Pizza type unknown. Can't make...")
            return nil
        }
    }
}
