//
//  ConvertorTableViewDelegate.swift
//  Convertor
//
//  Created by George Kyrylenko on 9/4/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation
import UIKit

extension ConvertorViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nbuResponse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NBUCell") as! NBUCell
        cell.currencyLbl.text = nbuResponse[indexPath.row].CurrencyCodeL
        cell.uahLbl.text = "\(nbuResponse[indexPath.row].Amount ?? 0) \(nbuResponse[indexPath.row].CurrencyCodeL ?? "")"
        cell.currencyValLbl.text = "\(nbuResponse[indexPath.row].Units ?? 0) uah"
        if indexPath.row % 2 == 1{
            cell.backgroundColor = UIColor(red: 0, green: 201.0/255.0, blue: 0, alpha: 0.3)
        } else {
            cell.backgroundColor = .white
        }
        return cell
    }
    
    
}
