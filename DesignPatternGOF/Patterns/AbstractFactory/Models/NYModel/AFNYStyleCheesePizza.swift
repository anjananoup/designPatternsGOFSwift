//
//  AFNYStyleCheesePizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFNYStyleCheesePizza: AFPizza {
    init() {
        super.init(name: "NY Style Sauce and Cheese Pizza",
                   dough: "Thin Crust Dough",
                   sauce: "Marinara Sauce")
        
        toppings.append("Grated Reggiano Cheese")
    }
}
