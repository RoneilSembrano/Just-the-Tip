//
//  ViewController.swift
//  Just the Tip
//
//  Created by Roneil Sembrano on 1/3/20.
//  Copyright © 2020 Roneil Sembrano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billLabel     : UILabel!
    @IBOutlet weak var isCustomButton: UIButton!
    @IBOutlet weak var tipLabel      : UILabel!
    @IBOutlet weak var totalLabel    : UILabel!
    @IBOutlet weak var billField     : UITextField!
    @IBOutlet weak var tipControl    : UISegmentedControl!
    
    var customPercent1: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billField.becomeFirstResponder()
        billField.textAlignment = .right
    }
    
    /*
     this function used so CustomViewController can segue back to the ViewController
     */
    @IBAction func unwindToMain(_ sender: UIStoryboardSegue) {}
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    /*
     this function calculates the tip and total from a bill amount, it allows the user
     to put the bill amount and also choose the rate or create a custom rate
     */
    @IBAction func calculateTip(_ sender: UIButton?) {
        if customPercent1 != nil{
            let customm = customPercent1 ?? 0
            let bill = Double(billField.text!) ?? 0
            let tip = bill * customm/100
            let total = bill + tip
            billLabel.text = String(format: "%.2f", bill)
            tipLabel.text = String(format: "+%.2f", tip)
            totalLabel.text = String(format: "%.2f", total)
            customPercent1 = nil
        }else{
            let bill = Double(billField.text!) ?? 0
            billLabel.text = String(format: "%.2f", bill)
            let tipPercentages = [0.1, 0.15, 0.2]
            let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
            tipLabel.text = String(format: "+%.2f", tip)
            totalLabel.text = String(format: "%.2f", total)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
}

