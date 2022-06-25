//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by COSME D ALVES SILVA on 21/6/2022.
//

import Foundation
import UIKit

struct CalculateBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice  ?? "No advice"
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are underweight!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are in good shape!", color: .green)
        }else{
            bmi = BMI(value: bmiValue, advice: "You are overweight!", color: .red)
        }
    }
    
}
