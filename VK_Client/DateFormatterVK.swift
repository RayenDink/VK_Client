//
//  DateFormatterVK.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import UIKit

class DateFormatterVK {
    
    let dateFormatter = DateFormatter()
    
    func convertDate(timestamp: Double) -> String{
        dateFormatter.dateFormat = "MM-dd-yyyy HH.mm"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        let date = Date(timeIntervalSince1970: timestamp)
        return dateFormatter.string(from: date)
    }
}
