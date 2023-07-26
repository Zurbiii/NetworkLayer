//
//  Strings.swift
//  RakutenTechnicalTest
//
//  Created by Guillaume ZURBACH on 23/07/2023.
//

public struct Strings {

    public let baseURL: String
    public let path: String
    public let apiKey: String
    public let method: String
    
    public init(baseURL: String,
                path: String,
                apiKey: String,
                method: String) {
        self.baseURL = baseURL
        self.path = path
        self.apiKey = apiKey
        self.method = method
    }

}
