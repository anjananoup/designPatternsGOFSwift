//
//  FMNYStylePepperoniPizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/17/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class FMNYStylePepperoniPizza: FMPizza {
    init() {
        super.init(name: "NY Style Pepperoni Pizza",
                   dough: "Thin Crust Dough",
                   sauce: "Marinara Sauce")
        
        toppings.append("Grated Reggiano Cheese")
        toppings.append("Sliced Pepperoni")
        toppings.append("Garlic")
        toppings.append("Onion")
        toppings.append("Mushrooms")
        toppings.append("Red Pepper")
    }
}
