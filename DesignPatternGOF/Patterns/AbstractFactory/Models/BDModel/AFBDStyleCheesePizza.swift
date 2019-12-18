//
//  AFBDStyleCheesePizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFBDStyleCheesePizza: AFPizza {
    init() {
        super.init(name: "BD Style Deep Dish Cheese Pizza",
                   dough: "Extra Thick Crust Dough",
                   sauce: "Plum Tomato Sauce")
        
        toppings.append("Shredded Mozzarella Cheese")
    }
    
    override func cut() {
        print("Cutting the pizza: \(name) into square slices")
    }
}
