//
//  NetworkDataFetcher.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 20.03.2021.
//

import Foundation

class NetworkDataFetcher {
    
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func getNews(response: @escaping ([NewsModel]?, Error?) -> Void) {
        let params = ["country": "ru"]
        networkService.request(path: API.everything, params: params) { [weak self] (data, error) in
            if let error = error {
                response(nil, error)
                return
            }
            let news = self?.decodeJSON(data: data)
            response(news?.articles, nil)
        }
    }
    
    private func decodeJSON(data: Data?) -> NewsModels? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let data = data else { return nil }
        do {
            let response = try decoder.decode(NewsModels.self, from: data)
            return response
        } catch let jsonError {
            print("Failed to decode JSON", jsonError)
            return nil
        }
    }
}
