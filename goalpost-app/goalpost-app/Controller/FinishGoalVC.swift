//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Joseph Freeman on 2020-02-19.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var pointsTxtField: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    var goalDescritpion: String!
    var goalType: GoalType!
    var points: Int!
    
    func initData(goalDescription: String, goalType: GoalType){
        self.goalDescritpion = goalDescription
        self.goalType = goalType
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
//        pointsTxtField.inputAccessoryView = createGoalBtn
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        
    }
    
    func save(){
        
    }
}
