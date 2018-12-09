//
//  ViewController.swift
//  Simpson Book
//
//  Created by Hakan Akın on 15.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

//  Adding Table View's classes

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//  Defining UI components
    
    @IBOutlet weak var tableView: UITableView!
    
//  Defining array for Simpsons
    
    var mySimpsons = [Simpson]()
    
//  Defining to understand chosen Simpson
    
    var chosenSimpson = Simpson()

    override func viewDidLoad() {
        super.viewDidLoad()

//  Adding Delegate and Data Source
        
        tableView.delegate = self
        tableView.dataSource = self

//  Simpson Class
        
        let bart = Simpson()
        bart.name = "Bart Simpson"
        bart.occupation = "Student"
        bart.image = UIImage(named: "Bart_Simpson.png")!
        
        let homer = Simpson()
        homer.name = "Homer Simpson"
        homer.occupation = "Nuclear Safety Inspector"
        homer.image = UIImage(named: "Homer_Simpson.png")!
        
        let lisa = Simpson()
        lisa.name = "Lisa Simpson"
        lisa.occupation = "Student"
        lisa.image = UIImage(named: "Lisa_Simpson.png")!
        
        let maggie = Simpson()
        maggie.name = "Maggie Simpson"
        maggie.occupation = "Singer"
        maggie.image = UIImage(named: "Maggie_Simpson.png")!
        
        let marge = Simpson()
        marge.name = "Marge Simpson"
        marge.occupation = "Home Maker"
        marge.image = UIImage(named: "Marge_Simpson.png")!
        
//  Adding Simpsons to array
        
        mySimpsons.append(bart)
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        mySimpsons.append(marge)
        
    }
    
//  Adding functions of Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
//  This function is for preparing to segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as? detailsVC
            destinationVC?.selectedSimpson = chosenSimpson
            
        }
    }

//  This function is for understanding selected row
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenSimpson = mySimpsons[indexPath.row]

//  This function is for performing segue
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
//  This function is for writing name to cells
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
}
