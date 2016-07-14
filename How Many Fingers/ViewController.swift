//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Ignacio Lasaosa Sáez on 14/7/16.
//  Copyright © 2016 Ignacio Lasaosa Sáez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuessTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if userGuessTextField.text!.isEmpty {
            resultLabel.text = "Please introduce a number"
        } else {
            if diceRoll == userGuessTextField.text {
                resultLabel.text = "You're right!"
            } else {
                resultLabel.text = "Wrong! It was a " + diceRoll
            }
        }
        
        print(diceRoll)
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

