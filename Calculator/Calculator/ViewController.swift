//
//  ViewController.swift
//  Calculator
//
//  Created by Hakan Akın on 22.01.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func sumOperation(_ sender: Any) {
        let sum = Double(firstNumber.text!)! + Double(secondNumber.text!)!
        if sum.truncatingRemainder(dividingBy: 1) == 0 {
            resultLabel.text = String (Int(sum))
        } else {
            resultLabel.text = String(format:"%.2f", sum)
        }
    }
    
    @IBAction func substractionOperation(_ sender: Any) {
        let substraction = Double(firstNumber.text!)! - Double(secondNumber.text!)!
        if substraction.truncatingRemainder(dividingBy: 1) == 0 {
            resultLabel.text = String (Int(substraction))
        } else {
            resultLabel.text = String(format:"%.2f", substraction)
        }
    }
    
    @IBAction func divisionOperation(_ sender: Any) {
        let division = Double(firstNumber.text!)! / Double(secondNumber.text!)!
        if division.truncatingRemainder(dividingBy: 1) == 0 {
            resultLabel.text = String (Int(division))
        } else {
            resultLabel.text = String(format:"%.2f", division)
        }
    }
    
    @IBAction func multiplicationOperation(_ sender: Any) {
        let multiplication = Double(firstNumber.text!)! * Double(secondNumber.text!)!
        if multiplication.truncatingRemainder(dividingBy: 1) == 0 {
            resultLabel.text = String (Int(multiplication))
        } else {
            resultLabel.text = String(format:"%.2f", multiplication)
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

