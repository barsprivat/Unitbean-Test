//
//  LookNewsPresenter.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 24.03.2021.
//

import Foundation

class LookNewsPresenter {
    var viewController: LookNewsViewController!
    
    func updateData(_ news: [NewsModel]?) {
        viewController.configure(news: news)
    }
}
