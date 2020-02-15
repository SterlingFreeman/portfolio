//
//  Wage.swift
//  window-shopper
//
//  Created by Joseph Freeman on 2020-02-15.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import Foundation


class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
    
}
