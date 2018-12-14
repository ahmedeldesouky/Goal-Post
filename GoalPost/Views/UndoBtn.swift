//
//  UndoBtn.swift
//  GoalPost
//
//  Created by Ahmed Mohamed El-Desouky on 12/14/18.
//  Copyright © 2018 Ahmed El-Desouky. All rights reserved.
//


import Foundation
import UIKit
@IBDesignable
class UndoBtn: UIButton {
    @IBInspectable
    var borderW: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderW }
    }
    
    @IBInspectable
    var borderC: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderC.cgColor }
    }
    
    @IBInspectable
    var backgroundC: UIColor = UIColor.clear {
        didSet {
            self.layer.backgroundColor = backgroundC.cgColor }
    }
}
