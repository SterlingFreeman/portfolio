//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Joseph Freeman on 2020-02-10.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    @IBOutlet weak var nextBtn: BorderButton!
    var player: Player! // ! means explicitly unwrapped optional. Here, we dont want the code to run without player
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player(desiredLeague: nil, selectedSkillLevel: nil)
        nextBtn.isEnabled = false
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "Mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "Womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "Coed")
    }
     
    func selectLeague (leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC { //if segue destination is of type SkillVC
            skillVC.player = self.player
            
        }
    }

}
