//
//  NBUURLS.swift
//  Convertor
//
//  Created by George Kyrylenko on 9/4/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

class NBUURLs {
    static func getBaseUrl() -> String{
        return "https://bank.gov.ua"///exchange_rates?json&date=01.12.2014"
    }
    
    static func getCourse(date: Double?) -> URL{
        let url = "\(getBaseUrl())/NBU_Exchange/exchange"
        let dateVal = Date(timeIntervalSince1970: date ?? 0)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let urlWithProps = Props.addProps(url: url, props: ["json":"","date":dateFormatter.string(from: dateVal)])
        return URL(string: urlWithProps)!
    }
}
