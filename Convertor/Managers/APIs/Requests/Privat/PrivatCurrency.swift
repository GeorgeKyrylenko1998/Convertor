//
//  PrivatCurrency.swift
//  Convertor
//
//  Created by George Kyrylenko on 9/4/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import RxSwift

class PrivateCurrencyRequest {
    static func getCurrency(date: Double?) -> Observable<PrivateResponse>{
        return Observable<PrivateResponse>.create({ (currencyO) -> Disposable in
            BaseRequest.urlRequest(url: PrivateURLs.getCourse(date: date), nil, nil, method: .GET).subscribe(onNext: { (data) in
                let currency = try? JSONDecoder().decode(PrivateResponse.self, from: data)
                currencyO.onNext(currency ?? PrivateResponse())
            }, onError: { (error) in
                currencyO.onError(error)
            }, onCompleted: {
                
            }, onDisposed: {
                
            })
            return Disposables.create()
        })
    }
}
