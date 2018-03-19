//
//  ViewController.swift
//  Stopwatch
//
//  Created by Lucas N. Munhoz on 12/23/15.
//  Copyright © 2015 Lucas N. Munhoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var timeLabel: UILabel!
    
    var timer = NSTimer()
    var dateFormatter = NSDateFormatter()
    var minutes = 0
    var seconds = 0
    var hours = 0
    
    func tick() {
        seconds++
        
        if seconds == 60 {
            minutes++
            seconds = 0
        }
        
        if minutes == 60 {
            hours++
            minutes = 0
        }
        
        // Converte para data e depois para string novamente para
        // mostrar no formato 00:00 sem muito trabalho.
        let date = dateFormatter.dateFromString("\(hours):\(minutes):\(seconds)")
        timeLabel.text = dateFormatter.stringFromDate(date!)
       
    }

    @IBAction func stopButtonOnClick(sender: AnyObject) {
        timer.invalidate()
        minutes = 0
        seconds = 0
        timeLabel.text = "00:00:00"
    }
    
    @IBAction func pauseButtonOnClick(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func playButtonOnClick(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("tick"), userInfo: nil, repeats: true)
    }
       
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "HH:mm:ss"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

