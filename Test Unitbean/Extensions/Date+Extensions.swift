//
//  Date+Extensions.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 20.03.2021.
//

import Foundation

extension Date {
    func convertToString() -> String {
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ru_Ru")
        formatter.dateFormat = "dd MMM в hh:mm"
        
        return formatter.string(from: self)
    }
}
 

