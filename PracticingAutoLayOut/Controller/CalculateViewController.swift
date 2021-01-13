//
//  ViewController.swift
//  PracticingAutoLayOut
//
//  Created by Bramdont José García Aponte on 10/1/21.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightSlider.setValue(1.5, animated: true)
        weightSlider.setValue(80.0, animated: true)

    }

    @IBAction func onHeightChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightValue.text = "\(height)m"
    }
    
    @IBAction func onWeightChange(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightValue.text = "\(weight)kg"
    }
    @IBAction func onCalculateClick(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    //triggered by the performSegue() method. We can use it to pass parameters through the segue to the next screen.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMI()
            
        }
    }
    
}

