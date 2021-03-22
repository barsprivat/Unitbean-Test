//
//  String+Extensions.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 20.03.2021.
//

import Foundation


extension String {
    func convertToDate() -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd'T'HH:mm:ss'Z'"
        formatter.timeZone = TimeZone.init(identifier: "Russia/Moscow")
        
        return formatter.date(from: self)
    }
}

