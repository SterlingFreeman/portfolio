//
//  ItemsVC.swift
//  coder-swag
//
//  Created by Joseph Freeman on 2020-02-17.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products: [Product] = [Product]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            cell.updateCellView(product: products[indexPath.row])
            return cell
        }
        
        return ProductCell()
    }

}
