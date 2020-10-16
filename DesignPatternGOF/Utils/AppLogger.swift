//
//  AppLogger.swift
//  DesignPatternGOF
//
//  Created by Anjan Kumar Majumder on 10/16/20.
//  Copyright © 2020 Anjan. All rights reserved.
//

import Foundation

class AppLogger {
    private init() {}
    
    class func logInfo(message: String, function: String = #function, file: String = #file, line: Int = #line) {
        print("\(NSURL.fileURL(withPath: file).lastPathComponent):\(function):\(line) - \(message)")
    }

    class func logError(message: String, function: String = #function, file: String = #file, line: Int = #line, isNetworkLog: Bool = false) {
        print("[Error]: \(NSURL.fileURL(withPath: file).lastPathComponent):\(function):\(line) - \(message)")
    }
}
