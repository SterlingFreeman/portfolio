//
//  DataService.swift
//  coder-swag
//
//  Created by Joseph Freeman on 2020-02-17.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories: [Category] = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let shirts: [Product] = [
        Product(imageName: "shirt01.jpg", title: "Random with logo T-Shirt", price: "$25"),
        Product(imageName: "shirt02.jpg", title: "Random white with logo T-Shirt", price: "$10"),
        Product(imageName: "shirt03.jpg", title: "Random Red With Logo T-Shirt", price: "$35"),
        Product(imageName: "shirt04.jpg", title: "Random Gray With Logo T-Shirt", price: "$5"),
        Product(imageName: "shirt05.jpg", title: "Random Black2 With Logo T-Shirt", price: "$5")
    ]
    
    private let hats: [Product] = [
        Product(imageName: "hat01.jpg", title: "Random with logo Hat", price: "$25"),
        Product(imageName: "hat02.jpg", title: "Random white with logo Hat", price: "$10"),
        Product(imageName: "hat03.jpg", title: "Random Red With Logo Hat", price: "$35"),
        Product(imageName: "hat04.jpg", title: "Random Gray With Logo Hat", price: "$5"),
    ]
    
    private let hoodies: [Product] = [
        Product(imageName: "hoodie01.jpg", title: "Random with logo Hoodie", price: "$25"),
        Product(imageName: "hoodie02.jpg", title: "Random white with logo Hoodie", price: "$10"),
        Product(imageName: "hoodie03.jpg", title: "Random Red With Logo Hoodie", price: "$35"),
        Product(imageName: "hoodie04.jpg", title: "Random Gray With Logo Hoodie", price: "$5"),
    ]
    
    private let digitalGoods: [Product] = [Product]()
    
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
