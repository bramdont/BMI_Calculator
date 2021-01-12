//
//  ResultViewController.swift
//  PracticingAutoLayOut
//
//  Created by Bramdont José García Aponte on 11/1/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    var valueBMI: String?

    @IBOutlet weak var resultBMI: UILabel!
    @IBOutlet weak var advice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        prepareView()
    }
    
    //When the Recalculate button is pressed, we go back to the calculate BMI Screen (MainScreen)
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    //To set all values that has been passed from the segue to the views in the screen, so we can show it to the end user.
    func prepareView() {
        resultBMI.text = valueBMI
    }

}
