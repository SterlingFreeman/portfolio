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
        guard let createGoalVC = storyboard?.instantiateViewController(identifier: "CreateGoalVC") as? CreateGoalVC else{
            return
        }
        dismissDetail(viewControllerToDismissTo: createGoalVC)
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTxtField.text != "" {
            self.save {
                (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }

    }
    
    func save(completion: (_ finished: Bool) -> ()){
        guard let managedContext = appDelegate?.persistentContainer.viewContext else{ return }
        let goal = Goal(context: managedContext)
        goal.goalDescription = self.goalDescritpion
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTxtField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            print("successfully saved data")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
}
