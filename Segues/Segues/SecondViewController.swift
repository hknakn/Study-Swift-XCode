//
//  SecondViewController.swift
//  Segues
//
//  Created by Hakan Akın on 6.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var name = ""
    
    @IBAction func backButton(_ sender: Any) {
        
    performSegue(withIdentifier: "fromSecondToFirst", sender: nil)
    
    // This code can be written to go previous page
        
    // self.dismiss(animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Name is: \(name)"
        
    }
}
