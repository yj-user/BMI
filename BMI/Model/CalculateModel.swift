//
//  CalculateModel.swift
//  BMI
//
//  Created by youngjun kim on 2021/05/18.
//

import UIKit

struct CalculateModel {
    var bmi: BMI?
    
    mutating func getBmiInfo(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "더 드세요 !", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "딱 적당해요 !", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "식사를 줄이고 운동하세요 !", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
    }
    
    func value() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiString
    }
    
    func advice() -> String {
        return bmi?.advice ?? "지시사항이 없습니다"
    }
    
    func color() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
