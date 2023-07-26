//
//  APIService.swift
//  RakutenTechnicalTest
//
//  Created by Guillaume ZURBACH on 23/07/2023.
//

import Foundation

public final class APIService: APIServiceProtocol {
    
    public static func request<T: Decodable>(_ apiRoute: APIRouteable,
                                             completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = URL(string: apiRoute.url) else {
            completion(.failure(APIError.urlNotValid))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = apiRoute.method
        request.allHTTPHeaderFields = apiRoute.parameters
        
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                print("API ERROR: \(error)")
                completion(.failure(error))
            }
            
            guard let data = data else {
                completion(.failure(APIError.noData))
                return
            }
            
            do {
                let response = try JSONDecoder().decode(T.self, from: data)
                let result = Result { response }
                completion(result)
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }

}


