//
//  ProductCellCollectionViewCell.swift
//  coder-swag
//
//  Created by Joseph Freeman on 2020-02-17.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateCellView(product: Product){
        self.productImage.image = UIImage(named: product.imageName)
        self.productTitle.text = product.title
        self.productPrice.text = "\(product.price)"
    }
    
}
