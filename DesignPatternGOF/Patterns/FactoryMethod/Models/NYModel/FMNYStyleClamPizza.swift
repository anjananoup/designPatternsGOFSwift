//
//  FMNYStyleClamPizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/17/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class FMNYStyleClamPizza: FMPizza {
    init() {
        super.init(name: "NY Style Clam Pizza",
                   dough: "Thin Crust Dough",
                   sauce: "Marinara Sauce")
        
        toppings.append("Grated Reggiano Cheese")
        toppings.append("Fresh Clams from Long Island Sound")
    }
}
