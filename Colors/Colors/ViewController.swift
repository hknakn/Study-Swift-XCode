//
//  ViewController.swift
//  Colors
//
//  Created by Hakan Akın on 6.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func whiteClicked(_ sender: Any) {
        
        view.backgroundColor = UIColor.white
        
    }

    @IBAction func blackClicked(_ sender: Any) {
        
        view.backgroundColor = UIColor.black
        
    }
    
    @IBAction func magentaClicked(_ sender: Any) {
    
    view.backgroundColor = UIColor.magenta
        
    }

    @IBAction func purpleClicked(_ sender: Any) {
        
        view.backgroundColor = UIColor.purple
        
    }
    
    @IBAction func grayClicked(_ sender: Any) {
        
        view.backgroundColor = UIColor.gray
        
    }

    @IBAction func yellowClicked(_ sender: Any) {
    
    view.backgroundColor = UIColor.yellow
    
    }
    
}

