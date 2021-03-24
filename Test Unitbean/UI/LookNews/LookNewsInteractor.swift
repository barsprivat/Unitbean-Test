//
//  LookNewsInteractor.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 24.03.2021.
//

import Foundation

class LookNewsInteractor {
    var presenter: LookNewsPresenter!
    
    private let fetcher: NetworkDataFetcher = NetworkDataFetcher(networkService: NetworkService())
    
    func getNews() {
        fetcher.getNews { (news, error) in
            self.presenter.updateData(news)
        }
    }
}
