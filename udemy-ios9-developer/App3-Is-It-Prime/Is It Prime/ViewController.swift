//
//  ViewController.swift
//  Is It Prime
//
//  Created by Lucas N. Munhoz on 12/18/15.
//  Copyright © 2015 Lucas N. Munhoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var numberTextField: UITextField!
    
    @IBAction func checkPrimeButtonOnClick(sender: AnyObject) {
        let number = Int(numberTextField.text!)
        
        if number != nil {
            if isItPrime(number!) {
                resultLabel.text = "The number \(number!) is it prime!"
            }else {
                resultLabel.text = "The number \(number!) is not prime..."
            }
        }else {
            resultLabel.text = "You must enter a number..."
        }
        
    }
    
    func isItPrime(number:Int) -> Bool {
        if number == 1 { return false }
        if number == 2 { return true }
        
        for var i = 2; i < number; i++ {
            if number % i == 0 {
                return false
            }
        }
        return true
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

