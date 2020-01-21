//
//  BRealmQueryBuilder.swift
//  DesignPatternGOF
//
//  Created by Anjan on 1/21/20.
//  Copyright © 2020 Anjan. All rights reserved.
//

class BRealmQueryBuilder<Model: BDomainModel>: BBaseQueryBuilder<Model> {
    enum Query {
        case filter(Predicate)
        case limit(Int)
        /// ...
    }
    
    fileprivate var operations = [Query]()

    @discardableResult
    override func limit(_ limit: Int) -> BRealmQueryBuilder<Model> {
        operations.append(Query.limit(limit))
        return self
    }

    @discardableResult
    override func filter(_ predicate: @escaping Predicate) -> BRealmQueryBuilder<Model> {
        operations.append(Query.filter(predicate))
        return self
    }

    override func fetch() -> [Model] {
        print("RealmQueryBuilder: Initializing CoreDataProvider with \(operations.count) operations:")
        return BRealmProvider().fetch(operations)
    }
}
