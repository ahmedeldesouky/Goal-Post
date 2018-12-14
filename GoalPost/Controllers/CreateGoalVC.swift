//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Ahmed Mohamed El-Desouky on 12/10/18.
//  Copyright © 2018 Ahmed El-Desouky. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var gaolTxtView: UITextView!
    @IBOutlet weak var shortermOutletBtn: UIButton!
    @IBOutlet weak var longtermOutletBtn: UIButton!
    @IBOutlet weak var nextOutletBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextOutletBtn.bindToKeyboard()
        shortermOutletBtn.setSelectedColor()
        longtermOutletBtn.setDeselectedColor()
        
        gaolTxtView.delegate = self
    }
    
    @IBAction func shortermBtn(_ sender: Any) {
        goalType = .shortTerm
        shortermOutletBtn.setSelectedColor()
        longtermOutletBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtn(_ sender: Any) {
        goalType = .longTerm
        longtermOutletBtn.setSelectedColor()
        shortermOutletBtn.setDeselectedColor()
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        if gaolTxtView.text != "" && gaolTxtView.text != "What's your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: gaolTxtView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        gaolTxtView.text = ""
        gaolTxtView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
