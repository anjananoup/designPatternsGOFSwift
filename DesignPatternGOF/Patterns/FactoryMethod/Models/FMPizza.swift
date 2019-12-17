//
//  FMPizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/17/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class FMPizza {
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
        print("Prepare: \(name)")
        print("Tossing dough...")
        print("Adding sauce...")
        print("Adding toppings: ")
        for topping in toppings {
            print("topping --> \(topping)")
        }
    }
    
    func bake() {
        print("Bake the pizza: \(name)")
    }
    
    func cut() {
        print("Cut the pizza: \(name) into diagonal slice")
    }
    
    func box() {
        print("Place pizza: \(name) in official PizzaStore box")
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
