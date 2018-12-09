//
//  ViewController.swift
//  Timers
//
//  Created by Hakan Akın on 6.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
        
    }

    @objc func timerFunction() {
        
        timeLabel.text = String(counter)
        counter = counter - 1
        
        if counter == 0 {
            
            timer.invalidate()
            timeLabel.text = "Time is OFF"
            
        }
    
    }
    
}

