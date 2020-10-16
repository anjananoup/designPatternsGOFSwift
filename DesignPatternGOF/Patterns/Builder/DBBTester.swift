//
//  DBBTester.swift
//  DesignPatternGOF
//
//  Created by Anjan on 1/21/20.
//  Copyright © 2020 Anjan. All rights reserved.
//

class DBBTester: DPTester {
    func startTesting() {
        AppLogger.logInfo(message: "Client: Start fetching data from Realm")
        clientCode(builder: BRealmQueryBuilder<BUserModel>())

        AppLogger.logInfo(message: "Client: Start fetching data from CoreData")
        clientCode(builder: BCoreDataQueryBuilder<BUserModel>())
    }
    
    private func clientCode(builder: BBaseQueryBuilder<BUserModel>) {
        let results = builder.filter({ $0.age > 20 })
            .limit(1)
            .fetch()

        AppLogger.logInfo(message: "Client: I have fetched: " + String(results.count) + " records.")
    }
}
