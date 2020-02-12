//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Joseph Freeman on 2020-02-09.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderWidth = 2
        
    }

}
