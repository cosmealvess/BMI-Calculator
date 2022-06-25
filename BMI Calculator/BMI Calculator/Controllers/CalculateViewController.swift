//
//  ViewController.swift
//  BMI Calculator
//
//  Created by COSME D ALVES SILVA on 13/6/2022.
//

import UIKit

class CalculateViewController: UIViewController {
    
   var calculateBrain = CalculateBrain()
    
    
    @IBOutlet weak var hieghtLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heigthSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        hieghtLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBrain.calculateBMI(height: height, weight: weight)
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVc = segue.destination as! ResultViewController
            destinationVc.bmiValue = calculateBrain.getBMIValue()
            destinationVc.advice = calculateBrain.getAdvice()
            destinationVc.color = calculateBrain.getColor()
        }
    }
        
    
}

