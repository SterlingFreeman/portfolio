//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Joseph Freeman on 2020-02-10.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    @IBOutlet weak var finishBtn: BorderButton!
    @IBOutlet weak var beginnerBtn: BorderButton!
    @IBOutlet weak var ballerBtn: BorderButton!
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finishBtn.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        selectSkillLevel(skillLevel: "Beginner")
    }
    
    @IBAction func onBallerTapped(_ sender: Any) {
        selectSkillLevel(skillLevel: "Baller")
    }
    
    @IBAction func onFinishTapped(_ sender: Any) {
    }
    
    
    func selectSkillLevel(skillLevel: String) {
        player.selectedSkillLevel = skillLevel
        finishBtn.isEnabled = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
