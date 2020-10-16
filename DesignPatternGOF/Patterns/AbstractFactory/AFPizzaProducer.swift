//
//  AFPizzaProducer.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/18/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

enum AFPizzaFactoryStyle {
    case NY
    case BD
    case Unknown
}

class AFPizzaProducer {
    private init() {}
    
    static func getPizzaFactory(_ style: AFPizzaFactoryStyle) -> AFPizzaFactory? {
        switch style {
        case .NY:
            return AFNYPizzaFactory()
        case .BD:
            return AFBDPizzaFactory()
        case .Unknown:
            AppLogger.logInfo(message: "Pizza Factory Unknown")
            fallthrough
        @unknown default:
            AppLogger.logInfo(message: "Unknown Pizza factory")
            return nil
        }
    }
}
