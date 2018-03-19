//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Lucas N. Munhoz on 12/18/15.
//  Copyright © 2015 Lucas N. Munhoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!

    @IBAction func guessButtonOnClick(sender: AnyObject) {
        let randomNumber = arc4random_uniform(6)
        let numberGuess = Int(numberTextField.text!)
        
        if numberGuess != nil {
            if numberGuess == Int(randomNumber) {
                resultLabel.text = "You're right!"
            }else{
                resultLabel.text = "You're wrong, the number is \(randomNumber)"
            }
        }else {
            resultLabel.text = "Please enter a number... 0 to 5"
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

