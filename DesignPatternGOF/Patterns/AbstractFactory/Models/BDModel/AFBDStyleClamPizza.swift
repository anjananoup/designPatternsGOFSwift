//
//  AFBDStyleClamPizza.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class AFBDStyleClamPizza: AFPizza {
    init() {
        super.init(name: "BD Style Clam Pizza",
                   dough: "Extra Thick Crust Dough",
                   sauce: "Plum Tomato Sauce")
        
        toppings.append("Shredded Mozzarella Cheese")
        toppings.append("Frozen Clams from Chesapeake Bay")
    }
    
    override func cut() {
        print("Cutting the pizza: \(name) into square slices")
    }
}
