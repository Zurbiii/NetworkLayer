//
//  APIServiceProtocol.swift
//  RakutenTechnicalTest
//
//  Created by Guillaume ZURBACH on 23/07/2023.
//

public protocol APIServiceProtocol {

    static func request<T: Decodable>(_ apiRoute: APIRouteable,
                                      completion: @escaping (Result<T, Error>) -> Void)

}
