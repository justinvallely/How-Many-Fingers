//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Justin Vallely on 5/18/15.
//  Copyright (c) 2015 JMVapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guess: UITextField!
    
    @IBOutlet var answer: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var randomNumber = Int(arc4random_uniform(6))
        var guessInt = guess.text.toInt()
        
        if guessInt != nil {
            if guessInt == randomNumber {
                answer.text = "\(randomNumber), Nailed it!"
            } else if guessInt > 5 {
                answer.text = "Please enter a number 0-5."
            } else {
                answer.text = "Sorry, the answer was \(randomNumber)."
            }
        } else {
            answer.text = "Please enter a number 0-5."
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

