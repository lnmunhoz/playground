//
//  SecondViewController.swift
//  Todo-List
//
//  Created by Lucas N. Munhoz on 12/23/15.
//  Copyright © 2015 Lucas N. Munhoz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    
    @IBAction func addItemButton(sender: AnyObject) {
        if itemTextField.text != nil {
            toDoList.append(itemTextField.text!)
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            itemTextField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    


}

