//
//  AFNYStyleClamPizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFNYStyleClamPizza: AFPizza {
    init() {
        super.init(name: "NY Style Clam Pizza",
                   dough: "Thin Crust Dough",
                   sauce: "Marinara Sauce")
        
        toppings.append("Grated Reggiano Cheese")
        toppings.append("Fresh Clams from Long Island Sound")
    }
}
