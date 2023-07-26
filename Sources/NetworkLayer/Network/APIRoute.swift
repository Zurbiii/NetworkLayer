//
//  APIRoute.swift
//  RakutenTechnicalTest
//
//  Created by Guillaume ZURBACH on 23/07/2023.
//

import Foundation

public struct APIRoute: APIRouteable {
    
    public init(baseURL: String,
                path: String,
                method: String,
                parameters: Parameters) {
        self.baseURL = baseURL
        self.path = path
        self.method = method
        self.parameters = parameters
    }

    public var baseURL: String
    public var path: String
    public var method: String
    public var parameters: Parameters

}
