//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Joseph Freeman on 2020-02-17.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateCellView(category: Category){
        self.categoryImage.image = UIImage(named: category.imageName)
        self.categoryTitle.text = category.title
    }

}
