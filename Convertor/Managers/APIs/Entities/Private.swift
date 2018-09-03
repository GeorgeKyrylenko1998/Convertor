//
//  Private.swift
//  Convertor
//
//  Created by George Kyrylenko on 9/4/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

struct PrivateResponse: Codable {
    var date: String?
    var exchangeRate: [PrivateCurrency]?
}

struct PrivateCurrency: Codable {
    var currency: String?
    var saleRate: Double?
    var purchaseRate: Double?
}
