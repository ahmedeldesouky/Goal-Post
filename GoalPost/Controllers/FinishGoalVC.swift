//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Ahmed Mohamed El-Desouky on 12/11/18.
//  Copyright © 2018 Ahmed El-Desouky. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var pointsTxt: UITextField!
    @IBOutlet weak var createGoalOutletBtn: UIButton!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalOutletBtn.bindToKeyboard()
        pointsTxt.delegate = self
    }
    
    @IBAction func createGoalBtn(_ sender: Any) {
        // Pass data into Core Data Model
        if pointsTxt.text != "" {
        self.save { (complete) in
            if complete {
                dismiss(animated: true, completion: nil)
            }
            }
        }
    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let manageContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: manageContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTxt.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try manageContext.save()
            completion(true)
        } catch {
            debugPrint("Couldn't save: \(error.localizedDescription)")
            completion(false)
        }
    }
}
