//
//  AFBDStyleVeggiePizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFBDStyleVeggiePizza: AFPizza {
    init() {
        super.init(name: "BD Deep Dish Veggie Pizza",
                   dough: "Extra Thick Crust Dough",
                   sauce: "Plum Tomato Sauce")
        
        toppings.append("Shredded Mozzarella Cheese")
        toppings.append("Black Olives")
        toppings.append("Spinach")
        toppings.append("Eggplant")
    }
    
    override func cut() {
        print("Cutting the pizza: \(name) into square slices")
    }
}
