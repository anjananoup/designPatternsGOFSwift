//
//  AFPizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFPizza {
    private(set) var name: String
    private(set) var dough: String
    private(set) var sauce: String
    var toppings: [String] = []
    
    init(name: String, dough: String, sauce: String) {
        self.name = name
        self.dough = dough
        self.sauce = sauce
    }

    func prepare() {
        AppLogger.logInfo(message: "Prepare: \(name)")
        AppLogger.logInfo(message: "Tossing dough...")
        AppLogger.logInfo(message: "Adding sauce...")
        AppLogger.logInfo(message: "Adding toppings: ")
        for topping in toppings {
            AppLogger.logInfo(message: "topping --> \(topping)")
        }
    }
    
    func bake() {
        AppLogger.logInfo(message: "Bake the pizza: \(name)")
    }
    
    func cut() {
        AppLogger.logInfo(message: "Cut the pizza: \(name) into diagonal slice")
    }
    
    func box() {
        AppLogger.logInfo(message: "Place pizza: \(name) in official PizzaStore box")
    }
    
    func toString() -> String {
        var result = "--- \(name) ----\n"
        result.append("\(dough)\n")
        result.append("\(sauce)\n")
        for topping in toppings {
            result.append("topping: \(topping)\n")
        }
        return result
    }
}
