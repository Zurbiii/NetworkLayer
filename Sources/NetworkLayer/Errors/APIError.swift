//
//  APIError.swift
//  RakutenTechnicalTest
//
//  Created by Guillaume ZURBACH on 23/07/2023.
//

import Foundation

public enum APIError {
    
    case urlNotValid
    case noData
    
}

extension APIError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .urlNotValid: return "URL NOT VALID"
        case .noData: return "NO DATA"
        }
    }
    
}
