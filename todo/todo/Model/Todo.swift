//
//  Todo.swift
//  todo
//
//  Created by Joseph Freeman on 2020-02-22.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import Foundation

struct Todos: Codable {
    let items: [Todo]
}

struct Todo: Codable {
    let item: String
    let priority: Int
}
