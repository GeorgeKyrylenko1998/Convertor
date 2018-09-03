//
//  NBUCurrency.swift
//  Convertor
//
//  Created by George Kyrylenko on 9/4/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import RxSwift

class NBUCurrencyRequest {
    static func getCurrency(date: Double?) -> Observable<[NBUResponse]>{
        return Observable<[NBUResponse]>.create({ (currencyO) -> Disposable in
            BaseRequest.urlRequest(url: NBUURLs.getCourse(date: date), nil, nil, method: .GET).subscribe(onNext: { (data) in
                let currency = try? JSONDecoder().decode([NBUResponse].self, from: data)
                currencyO.onNext(currency ?? [NBUResponse]())
            }, onError: { (error) in
                currencyO.onError(error)
            }, onCompleted: {
                
            }, onDisposed: {
                
            })
            return Disposables.create()
        })
    }
}
