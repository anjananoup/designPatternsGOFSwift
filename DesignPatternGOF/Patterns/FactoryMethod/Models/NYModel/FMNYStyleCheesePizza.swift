//
//  FMNYStyleCheesePizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/17/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class FMNYStyleCheesePizza: FMPizza {
    
    init() {
        super.init(name: "NY Style Sauce and Cheese Pizza",
                   dough: "Thin Crust Dough",
                   sauce: "Marinara Sauce")
        
        toppings.append("Grated Reggiano Cheese")
    }
}
