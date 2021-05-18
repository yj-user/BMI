//
//  ResultViewController.swift
//  BMI
//
//  Created by youngjun kim on 2021/05/18.
//

import UIKit

class ResultViewController: UIViewController {

    var bmi: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet var bmiValue: UILabel!
    @IBOutlet var bmiAdvice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiValue.text = bmi
        bmiAdvice.text = advice
        bmiValue.textColor = color
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
