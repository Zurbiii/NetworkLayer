//
//  APIRouteable.swift
//  RakutenTechnicalTest
//
//  Created by Guillaume ZURBACH on 23/07/2023.
//

import Foundation

public typealias Parameters = [String: String]

public protocol APIRouteable {

    var baseURL: String { get }
    var path: String { get }
    var url: String { get }
    var method: String { get }
    var parameters: Parameters { get }

}

public extension APIRouteable {
    
    var url: String {
        baseURL + path
    }
    
}
