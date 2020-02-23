//
//  TodoCell.swift
//  todo
//
//  Created by Joseph Freeman on 2020-02-22.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class TodoCell: UITableViewCell {
    @IBOutlet weak var itemLbl: UILabel!
    @IBOutlet weak var priorityView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        priorityView.layer.cornerRadius = 10
    }
    
    
    func updateTodoCellView(todo: Todo){
        self.itemLbl.text = todo.item
        
        switch todo.priority {
        case 0:
            self.priorityView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            break
        case 1:
            self.priorityView.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            break
        default:
            self.priorityView.backgroundColor = #colorLiteral(red: 1, green: 0.1976629853, blue: 0, alpha: 1)
        }
    }


}
