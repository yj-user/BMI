//
//  ViewController.swift
//  BMI
//
//  Created by youngjun kim on 2021/05/18.
//

import UIKit

class ViewController: UIViewController {

    var calculateModel = CalculateModel()
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChange(_ sender: UISlider) {
        let height = sender.value
        heightLabel.text = "\(String(format: "%.2f", height)) m"
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        let weight = sender.value
        weightLabel.text = "\(String(format: "%.1f", weight)) kg"
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculateModel.getBmiInfo(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmi = calculateModel.value()
            destinationVC.advice = calculateModel.advice()
            destinationVC.color = calculateModel.color()
        }
    }
    
}

