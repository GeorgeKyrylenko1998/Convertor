//
//  PrivatBaseUrl.swift
//  Convertor
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

class PrivateURLs {
    static func getBaseUrl() -> String{
        return "https://api.privatbank.ua/p24api"///exchange_rates?json&date=01.12.2014"
    }
    
    static func getCourse(date: Double?) -> URL{
        let url = "\(getBaseUrl())/exchange_rates"
        let dateVal = Date(timeIntervalSince1970: date ?? 0)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let urlWithProps = Props.addProps(url: url, props: ["json":"","date":dateFormatter.string(from: dateVal)])
        return URL(string: urlWithProps)!
    }
}
