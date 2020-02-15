//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Joseph Freeman on 2020-02-15.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customiseView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseView()
        
    }
    
    func customiseView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //White placeholder text if placeholder is set
        if let p = placeholder {// Assignment is successful if placeholder is not nil
            let place = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
        }
    }

}
