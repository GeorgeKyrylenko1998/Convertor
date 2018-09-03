//
//  Props.swift
//  RiaWeather2
//
//  Created by George Kyrylenko on 9/3/18.
//  Copyright © 2018 George Kyrylenko. All rights reserved.
//

import Foundation

class Props{
    static func addProps(url: String, props : [String:String]) -> String{
        var propsString = "?"
        for prop in props{
            if prop.value != ""{
                propsString+="\(prop.key)=\(prop.value)&"
            } else {
                 propsString+="\(prop.key)&"
            }
        }
        let urlWithPrtops = "\(url)\(propsString)"
        return urlWithPrtops
    }
}
