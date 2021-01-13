//
//  Calculator.swift
//  PracticingAutoLayOut
//
//  Created by Bramdont José García Aponte on 10/1/21.
//

import UIKit
struct Calculator{
    
    var bmiValue: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float){
        let bmi = weight / pow(height, 2)
        
        if bmi < 18.5{
            bmiValue = BMI(value: bmi, advice: "You should eat a little bit more.", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmi > 18.5 && bmi < 25.0 {
            bmiValue = BMI(value: bmi, advice: "You're doing great. Keep going!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmiValue = BMI(value: bmi, advice: "You should consider starting a diet.", color: #colorLiteral(red: 0.9764705896, green: 0.3844462755, blue: 0.397039851, alpha: 1))
        }
    }
    
    func getBMI() -> BMI {
        return bmiValue ?? BMI(value: 0.0, advice: "Default", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    }
    
}

