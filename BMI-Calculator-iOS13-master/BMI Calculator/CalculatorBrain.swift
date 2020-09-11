//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aaron Lee on 9/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        self.bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi ?? 0.0)
    }
}
