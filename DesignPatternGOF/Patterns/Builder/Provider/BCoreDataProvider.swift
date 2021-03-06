//
//  BCoreDataProvider.swift
//  DesignPatternGOF
//
//  Created by Anjan on 1/21/20.
//  Copyright © 2020 Anjan. All rights reserved.
//

class BCoreDataProvider {
    func fetch<Model: BDomainModel>(_ operations: [BCoreDataQueryBuilder<Model>.Query]) -> [Model] {

        /// Create a NSFetchRequest

        AppLogger.logInfo(message: "CoreDataProvider: Retrieving data from CoreData...")

        for item in operations {
            switch item {
            case .filter(_):
                AppLogger.logInfo(message: "CoreDataProvider: executing the 'filter' operation.")
                /// Set a 'predicate' for a NSFetchRequest.
                break
            case .limit(_):
                AppLogger.logInfo(message: "CoreDataProvider: executing the 'limit' operation.")
                /// Set a 'fetchLimit' for a NSFetchRequest.
                break
            case .includesPropertyValues(_):
                AppLogger.logInfo(message: "CoreDataProvider: executing the 'includesPropertyValues' operation.")
                /// Set an 'includesPropertyValues' for a NSFetchRequest.
                break
            }
        }

        /// Execute a NSFetchRequest and return results.
        return []
    }
}
