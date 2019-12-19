//
//  ATurkeyAdapter.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/19/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

class ATurkeyAdapter: ADuck {
    let turkey: ATurkey

    init(_ turkey: ATurkey) {
        self.turkey = turkey
    }

    func quack() {
        turkey.gobble()
    }

    func fly() {
        //Turkey need more time to fly
        for _ in 0..<5 {
            turkey.fly()
        }
    }
}
