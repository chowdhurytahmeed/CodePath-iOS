//
//  ViewController.swift
//  Prework
//
//  Created by Samira Chowdhury on 6/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBAction func onSliderValueChanged(_ sender: UISlider) {
        calculateTip(Double(sender.value))
        tipPercentLabel.text = String(format: "%d%%", Int(sender.value * 100))
    }
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 200/255, green: 100/255, blue: 200/255, alpha: 1)
        tipPercentLabel.text = "50%"
        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tipSlider: UISlider!
    func calculateTip(_ tipPercentage: Double) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tip = bill * tipPercentage
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

