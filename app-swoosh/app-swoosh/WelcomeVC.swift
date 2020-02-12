//
//  ViewController.swift
//  app-swoosh
//
//  Created by Joseph Freeman on 2020-02-09.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    @IBOutlet weak var mainWelcomeTitle: UILabel!
    @IBOutlet weak var subWelcomeTitle: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        // Logo should stay centered and at the top
//        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height)
//        //Subtitle should stay under main title
//        subWelcomeTitle.frame.origin = CGPoint(x: mainWelcomeTitle.frame.origin.x, y: mainWelcomeTitle.frame.maxY)
//        //background image should always cover full screen
//        bgImg.frame = view.frame
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }
    

}

