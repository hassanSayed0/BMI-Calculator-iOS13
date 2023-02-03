//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func sliderChange(_ sender: UISlider) {
        if sender.maximumValue == 3 {
            let height = String(format: "%.2f", (sender.value))
            heightLabel.text = "\(height)m"
        }
        else{
            let weight = String(format: "%.2f",  sender.value)
            weightLabel.text = "\(weight)kg"
        }
    }
    
    @IBAction func calculateButton(_ sender: UIButton){
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(weight: weight,height: height)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMI()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

