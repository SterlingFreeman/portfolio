//
//  Product.swift
//  coder-swag
//
//  Created by Joseph Freeman on 2020-02-17.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var imageName: String
    private(set) public var title: String
    private(set) public var price: String
    
    init(imageName: String, title: String, price: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
