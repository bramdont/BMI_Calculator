//
//  ViewController.swift
//  PracticingAutoLayOut
//
//  Created by Bramdont José García Aponte on 10/1/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightSlider.setValue(1.5, animated: true)
        weightSlider.setValue(80.0, animated: true)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightValue.text = "\(height)m"
    }
    
    @IBAction func onWeightChange(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightValue.text = "\(weight)kg"
    }
    @IBAction func onCalculateClick(_ sender: Any) {
        let IMC = weightSlider.value / pow(heightSlider.value, 2)
        
        print(IMC)
    }
    
}

