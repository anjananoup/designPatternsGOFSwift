//
//  DBBTester.swift
//  DesignPatternGOF
//
//  Created by Anjan on 1/21/20.
//  Copyright © 2020 Anjan. All rights reserved.
//

class DBBTester: DPTester {
    func startTesting() {
        print("Client: Start fetching data from Realm")
        clientCode(builder: BRealmQueryBuilder<BUserModel>())

        print()

        print("Client: Start fetching data from CoreData")
        clientCode(builder: BCoreDataQueryBuilder<BUserModel>())
    }
    
    private func clientCode(builder: BBaseQueryBuilder<BUserModel>) {
        let results = builder.filter({ $0.age > 20 })
            .limit(1)
            .fetch()

        print("Client: I have fetched: " + String(results.count) + " records.")
    }
}
