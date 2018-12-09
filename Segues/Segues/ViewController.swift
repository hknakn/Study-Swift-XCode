//
//  ViewController.swift
//  Segues
//
//  Created by Hakan Akın on 6.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!

    @IBOutlet weak var nameText: UITextField!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "fromFirstToSecond" {
            
            let destinationVC = segue.destination as? SecondViewController
            
             destinationVC?.name  = userName
            
        }
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        userName = nameText.text!
        performSegue(withIdentifier: "fromFirstToSecond", sender: nil)

    }

}

