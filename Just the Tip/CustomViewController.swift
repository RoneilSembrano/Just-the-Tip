//
//  CustomViewController.swift
//  Just the Tip
//
//  Created by Roneil Sembrano on 1/8/20.
//  Copyright © 2020 Roneil Sembrano. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    @IBOutlet weak var percentField: UITextField!//label with referencing outlet
    
    var customPercent:String? = nil //string that holds the text in percentField
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.percentField.becomeFirstResponder()//automatically displays decimal pad
    }
    
    /*
     this function makes the decimal pad appear and disappear when tapping anything other than the text field
     */
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    /*
     this function transfers data from CustomViewController to ViewController
     when the seque is activated the data is transferred
     */
    @IBAction override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ViewController//downcast to ViewController
        if let percent = percentField{//percent holds a reference to percentField
            let percentDouble = Double(percent.text!)//holds value of percent
            destVC.customPercent1 = percentDouble//assign value of percentDouble to custom
            destVC.calculateTip(nil)//call explicitly calculateTip
        }
    }
}
