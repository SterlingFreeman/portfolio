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
    @IBOutlet weak var completionView: UIView!
    

    
    func updateCellView(goal: Goal){
        self.goalDescriptionLbl.text = goal.goalDescription
        self.typeDescriptionLbl.text = goal.goalType
        self.goalProgressLbl.text = String(describing: goal.goalProgress)
        
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }

}
