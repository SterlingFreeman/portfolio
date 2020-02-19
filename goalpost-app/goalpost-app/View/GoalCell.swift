//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Joseph Freeman on 2020-02-18.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var typeDescriptionLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    func updateCellView(description: String, type: GoalType, goalProgressAmount: Int){
        self.goalDescriptionLbl.text = description
        self.typeDescriptionLbl.text = type.rawValue
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }

}
