//
//  ViewController.swift
//  CatchKenny
//
//  Created by Hakan Akın on 12.02.2018.
//  Copyright © 2018 Hakan Akın. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//  Labels
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var bestScoreLabel: UILabel!
    
//  Kennys
    
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!

//  Defining Timers and Counter
    
    var timer = Timer()
    var hideTimer  = Timer()
    var counter = 0
    
//  Defining score
    
    var score = 0
    
//  Defining array for Kenny images
    
    var kennyArray = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let highScore = UserDefaults.standard.object(forKey: "highscore")
        
        if highScore == nil {
            bestScoreLabel.text = "0"
        }
        
        if let newScore = highScore as? Int {
            bestScoreLabel.text = String(newScore)
        }
        
//  Gesture Recognizer to understand user tapped Kenny
        
        let gestureRecognizer1 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        let gestureRecognizer2 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        let gestureRecognizer3 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        let gestureRecognizer4 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        let gestureRecognizer5 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        let gestureRecognizer6 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        let gestureRecognizer7 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        let gestureRecognizer8 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        let gestureRecognizer9 = UITapGestureRecognizer.init(target: self, action: #selector(tappedKenny))
        
//  Making all Kennys User Interacted
        
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        
//  Using Gestures
        
        kenny1.addGestureRecognizer(gestureRecognizer1)
        kenny2.addGestureRecognizer(gestureRecognizer2)
        kenny3.addGestureRecognizer(gestureRecognizer3)
        kenny4.addGestureRecognizer(gestureRecognizer4)
        kenny5.addGestureRecognizer(gestureRecognizer5)
        kenny6.addGestureRecognizer(gestureRecognizer6)
        kenny7.addGestureRecognizer(gestureRecognizer7)
        kenny8.addGestureRecognizer(gestureRecognizer8)
        kenny9.addGestureRecognizer(gestureRecognizer9)

//  Counter decrease and timeLabel changes
        
        counter = 30
        timeLabel.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
        
        hideTimer = Timer.scheduledTimer(timeInterval: 0.45, target: self, selector: #selector(ViewController.hideKenny), userInfo: nil, repeats: true)

//  Adding Kenny images to array
        
        kennyArray.append(kenny1)
        kennyArray.append(kenny2)
        kennyArray.append(kenny3)
        kennyArray.append(kenny4)
        kennyArray.append(kenny5)
        kennyArray.append(kenny6)
        kennyArray.append(kenny7)
        kennyArray.append(kenny8)
        kennyArray.append(kenny9)
        
//  Using hideKenny function to hide all Kennys and show only one Kenny
        
        hideKenny()
    }
    
//  Making all Kennys Hided and picking one to show
    
    @objc func hideKenny() {
        
        for kenny in kennyArray {
            
            kenny.isHidden = true
            
        }
        
        let randomIndex = Int(arc4random_uniform(UInt32(kennyArray.count - 1)))
        kennyArray[randomIndex].isHidden = false
        
    }
    
//  Timer Function
//  Timer works until Counter becomes zero
//  If Timer is stopped there is an alert
//  Alert has two options OK and Replay
    
    @objc func timerFunction() {
        
        counter = counter - 1
        timeLabel.text = String(counter)
        
        if counter == 0 {
            
            timer.invalidate()
            hideTimer.invalidate()
            
            if self.score > Int(bestScoreLabel.text!)! {
                
                UserDefaults.standard.set(self.score, forKey: "highscore")
                bestScoreLabel.text = String(self.score)
                
            }
            
            let alert = UIAlertController.init(title: "Time", message: "Time is up", preferredStyle: UIAlertControllerStyle.alert)
            
            let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
               
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 30
                self.timeLabel.text = "\(self.counter)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
                
                self.timer = Timer.scheduledTimer(timeInterval: 0.45, target: self, selector: #selector(ViewController.hideKenny), userInfo: nil, repeats: true)
                
            })
            
            alert.addAction(replayButton)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
//  Function for what happens to tapped Kenny
    
    @objc func tappedKenny() {
        
        score = score + 1
        scoreLabel.text = "Score: \(score)"
        
    }
}
