//
//  AFNYStylePepperoniPizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFNYStylePepperoniPizza: AFPizza {
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
