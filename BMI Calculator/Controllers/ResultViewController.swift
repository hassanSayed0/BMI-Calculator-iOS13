//
//  resultViewController.swift
//  BMI Calculator
//
//  Created by hassan on 03/02/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultValueLabel: UILabel!
    
    @IBOutlet weak var backImageView: UIImageView!
    var bmiValue = "0.0"
    var advice = "non"
    var color : UIColor = .white
    override func viewDidLoad() {
        super.viewDidLoad()
        backImageView.backgroundColor = color
        resultValueLabel.text = bmiValue
        adviceLabel.text = advice
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
