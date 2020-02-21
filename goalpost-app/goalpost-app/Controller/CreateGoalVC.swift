//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Joseph Freeman on 2020-02-19.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = GoalType.shortTerm
    var placeholder: String = "What is your goal?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goalTextView.delegate = self
        goalTextView.text = placeholder
        goalTextView.textColor = UIColor.lightGray
        
//        goalTextView.inputAccessoryView = nextBtn
        nextBtn.bindToKeyboard()//Custom ext func created to mimick .inputAccessoryView
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != placeholder{
            guard let finishVC = storyboard?.instantiateViewController(identifier: "FinishGoalVC") as? FinishGoalVC else {
                return
            }
            finishVC.initData(goalDescription: goalTextView.text, goalType: goalType)
            presentSecondaryDetail(finishVC)
        }
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = GoalType.shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = GoalType.longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.setDeselectedColor()
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if goalTextView.textColor == UIColor.lightGray {
            goalTextView.text = nil
            goalTextView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if goalTextView.text == ""{
            goalTextView.text = placeholder
            goalTextView.textColor = UIColor.lightGray
        }
    }
    
}
