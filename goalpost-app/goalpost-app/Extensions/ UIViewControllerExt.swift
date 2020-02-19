//
//   UIViewControllerExt.swift
//  goalpost-app
//
//  Created by Joseph Freeman on 2020-02-19.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewControllerToPresent: UIViewController){
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail () {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .push
        transition.subtype = .fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        self.modalPresentationStyle = .fullScreen
        
        dismiss(animated: false, completion: nil)
    }
}
