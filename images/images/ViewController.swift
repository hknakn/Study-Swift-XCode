//
//  ViewController.swift
//  images
//
//  Created by Hakan Akın on 6.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func changeButton(_ sender: Any) {
        
        if imageView.image == UIImage(named: "james.jpg") {
            
            imageView.image = UIImage(named: "kirk.jpg")
            
        } else {
            
            imageView.image = UIImage(named: "james.jpg")
            
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

