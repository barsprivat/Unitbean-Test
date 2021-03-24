//
//  LookNewsPresenter.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 24.03.2021.
//

import Foundation

class LookNewsPresenter {
    var interactor: LookNewsInteractor!
    
    func getNews() {
        interactor.getNews()
    }
}
