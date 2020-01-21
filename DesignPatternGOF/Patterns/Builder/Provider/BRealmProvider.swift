//
//  BRealmProvider.swift
//  DesignPatternGOF
//
//  Created by Anjan on 1/21/20.
//  Copyright © 2020 Anjan. All rights reserved.
//

/// Data Providers contain a logic how to fetch models. Builders accumulate
/// operations and then update providers to fetch the data.
class BRealmProvider {
    var gResult: [BUserModel] = [BUserModel(id: 10, age: 15, email: "anjan.m"),
                                 BUserModel(id: 11, age: 25, email: "anjan.none"),
                                 BUserModel(id: 12, age: 35, email: "anjan.nobody"),
                                 BUserModel(id: 13, age: 45, email: "anjan.somebody")]
    
    
    func fetch<Model: BDomainModel>(_ operations: [BRealmQueryBuilder<Model>.Query]) -> [Model] {

        print("RealmProvider: Retrieving data from Realm...")
        var result: [Model] = []
        for item in operations {
            switch item {
            case .filter(let doSome):
                if let doing = doSome as? (BUserModel) -> Bool {
                    result = gResult.filter(doing).compactMap { $0 as? Model }
                    print("RealmProvider: 'filter' applied : \(result.count) operation.")
                }
                
                print("RealmProvider: executing the 'filter' : \(result.count) operation.")
                /// Use Realm instance to filter results.
                break
            case .limit(let count):
                print("RealmProvider: executing the 'limit': \(count) operation. result: \(result.count)")
                result = result.enumerated().filter { $0.offset < count }.map { $0.element }
                print("RealmProvider: 'limit': Apply \(count) operation. result: \(result.count)")
                /// Use Realm instance to limit results.
                break
            }
        }

        /// Return results from Realm
        return result
    }
}
