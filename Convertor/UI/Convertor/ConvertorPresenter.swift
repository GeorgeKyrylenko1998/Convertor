//
//  ConvertorPresenter.swift
//  Convertor
//
//  Created George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit
import RxSwift

class ConvertorPresenter: ConvertorPresenterProtocol {

    
    weak private var view: ConvertorViewProtocol?
    var interactor: ConvertorInteractorProtocol?
    private let router: ConvertorWireframeProtocol

    init(interface: ConvertorViewProtocol, interactor: ConvertorInteractorProtocol?, router: ConvertorWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

    
    func getPrivateCurrency(date: Double?) {
        self.interactor?.getPrivateCurrency(date: date).subscribe(onNext: { (response) in
            self.view?.setPrivateCurrency(response: response)
        }, onError: nil, onCompleted: nil, onDisposed: nil)
    }
    
    func getNBUCurrency(date: Double?) {
        self.interactor?.getNBUCurrency(date: date).subscribe(onNext: { (response) in
            self.view?.setNBUCurrency(response: response)
        }, onError: nil, onCompleted: nil, onDisposed: nil)
    }
}
