//
//  detailsVC.swift
//  Simpson Book
//
//  Created by Hakan Akın on 15.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {
    
//  Defining UI components
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    
    var selectedSimpson = Simpson()

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        occupationLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image
        
    }

}
