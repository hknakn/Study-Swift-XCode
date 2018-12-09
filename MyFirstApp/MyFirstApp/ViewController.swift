//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Hakan Akın on 18.01.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var breakingBadImage: UIImageView!
    @IBOutlet weak var labelWalter: UILabel!
    @IBOutlet weak var labelJessie: UILabel!
    
    @IBAction func changeButton(_ sender: Any) {
        labelWalter.text = "I am the danger!!"
        labelJessie.text = "Science bitch!!"
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

