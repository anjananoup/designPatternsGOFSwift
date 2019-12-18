//
//  AFBDStylePepperoniPizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFBDStylePepperoniPizza: AFPizza {
    init() {
        super.init(name: "BD Style Pepperoni Pizza",
                   dough: "Extra Thick Crust Dough",
                   sauce: "Plum Tomato Sauce")
        
        toppings.append("Shredded Mozzarella Cheese")
        toppings.append("Black Olives")
        toppings.append("Spinach")
        toppings.append("Eggplant")
        toppings.append("Sliced Pepperoni")
    }
    
    override func cut() {
        print("Cutting the pizza: \(name) into square slices")
    }
}
