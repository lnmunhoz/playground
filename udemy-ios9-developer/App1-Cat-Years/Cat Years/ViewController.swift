//
//  ViewController.swift
//  Cat Years
//
//  Created by Lucas N. Munhoz on 12/16/15.
//  Copyright © 2015 Lucas N. Munhoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var resultAgeLabel: UILabel!
    
    @IBAction func calculateButtonClick(sender: AnyObject) {
        let enteredAge = Int(ageTextField.text!)
        
        if enteredAge != nil {
            let resultAge = enteredAge! * 7
            resultAgeLabel.text = "Your cat is \(resultAge) in cat years"
        } else {
            resultAgeLabel.text = "You need to enter your cat's age..."
        }
        
        

        
    
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

