//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by COSME D ALVES SILVA on 14/6/2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var bmiResult: String?
   
    

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var advaceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        advaceLabel.text = bmiResult

 
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
