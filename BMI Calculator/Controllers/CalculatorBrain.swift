//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by hassan on 03/02/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
 
    var BMIValue : BMI?
   mutating func calculateBMI(weight:Float,height:Float){
        let value = weight / (height*height)
       if value < 18.5{
           BMIValue = BMI(value: value, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)  )

       }else if value < 24.9 {
           BMIValue = BMI(value: value, advice: "fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))

       }else{
           BMIValue = BMI(value: value, advice:"Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))

       }
   }
    func getBMI()-> String{
        let convertMBIToString = String(format: "%.1f", BMIValue?.value ?? 0.0)
        return convertMBIToString
    }
    func getAdvice()->String{
        return BMIValue?.advice ?? "error"
    }
    func getColor()->UIColor{
        return BMIValue?.color ?? .brown
    }
                          var someColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
}
