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
    
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController){
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        
        guard let presentingViewController = self.presentingViewController else{
            return
        }
        
        dismiss(animated: false) {
            presentingViewController.view.window?.layer.add(transition, forKey: kCATransition)
            presentingViewController.present(viewControllerToPresent, animated: false, completion: nil)
        }
    }
    
    func dismissDetail () {
        self.modalPresentationStyle = .fullScreen
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = .push
        transition.subtype = .fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        
        dismiss(animated: false, completion: nil)
    }
    
    func dismissDetail(viewControllerToDismissTo: UIViewController){
        viewControllerToDismissTo.modalPresentationStyle = .fullScreen
        
        let transition = CATransition()
        transition.type = .push
        transition.subtype = .fromLeft
        transition.duration = 0.3
        
        guard let presentingViewController = self.presentingViewController else{
            return
        }
        
        dismiss(animated: false) {
            presentingViewController.view.window?.layer.add(transition, forKey: kCATransition)
            presentingViewController.present(viewControllerToDismissTo, animated: false, completion: nil)
        }
    }
}


