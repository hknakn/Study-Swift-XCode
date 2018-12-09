//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Hakan Akın on 6.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var isJamesOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic(){
        
        if isJamesOn == true {
            
            imageView.image = UIImage(named: "kirk.jpg")
            nameLabel.text =  "Kirk Hammet"
            isJamesOn = false
            
        } else {
            
            imageView.image = UIImage(named: "james.jpg")
            nameLabel.text = "James Hethfield"
            isJamesOn = true
            
        }
        
        print("Clicked")
    }
}

