//
//  Category.swift
//  coder-swag
//
//  Created by Joseph Freeman on 2020-02-17.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}


