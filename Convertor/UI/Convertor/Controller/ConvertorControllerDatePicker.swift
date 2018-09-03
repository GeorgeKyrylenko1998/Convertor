//
//  ConvertorControllerDatePicker.swift
//  Convertor
//
//  Created by George Kyrylenko on 9/4/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit

extension ConvertorViewController{
    func createDatePickerAlert(title: String, message: String?, maxDate: Double?, minDate: Double?, actionOk: @escaping (_ num: Int) -> Void) -> UIAlertController{
        let vc = UIViewController()
        vc.preferredContentSize = CGSize(width: 250,height: 300)//300
        let pickerDateView = UIDatePicker(frame: CGRect(x: 0, y: 0, width: 250, height: 300))
        pickerDateView.datePickerMode = UIDatePicker.Mode.date
        if let maxDate = maxDate{
            pickerDateView.maximumDate = Date(timeIntervalSince1970: maxDate)
        }
        if let minDate = minDate{
            pickerDateView.minimumDate = Date(timeIntervalSince1970: minDate)
        }
        
        let alertDatePicker = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alertDatePicker.setValue(vc, forKey: "contentViewController")
        vc.view.addSubview(pickerDateView)
        alertDatePicker.addAction(UIAlertAction(title: "OK", style: .default) {(action) in
            actionOk(Int(pickerDateView.date.timeIntervalSince1970))
        })
        alertDatePicker.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alertDatePicker, animated: true)
        return alertDatePicker
    }
}
