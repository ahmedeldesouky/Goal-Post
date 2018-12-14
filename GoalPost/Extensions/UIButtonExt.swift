//
//  UIButtonExt.swift
//  GoalPost
//
//  Created by Ahmed Mohamed El-Desouky on 12/11/18.
//  Copyright © 2018 Ahmed El-Desouky. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.1150866141, green: 0.8550934436, blue: 0.3882352941, alpha: 1)
        self.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.titleLabel?.textColor = #colorLiteral(red: 0.1150866141, green: 0.8550934436, blue: 0.3882352941, alpha: 1)
    }
       
}
