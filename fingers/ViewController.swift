//
//  ViewController.swift
//  fingers
//
//  Created by Reem Alattas on 1/31/16.
//  Copyright © 2016 ReemAlattas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var guess: UITextField!

    @IBOutlet weak var result: UILabel!
    
    @IBAction func guessBtn(sender: AnyObject) {
        var randomNumber = arc4random_uniform(6)
        print(randomNumber)
        var guessInt = Int(guess.text!)
        print(guessInt)
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                result.text = "Correct!"
            }
            else {
                result.text = "Nope! It was a \(randomNumber)"
            }
            
        } else {
            result.text = "Please enter a number 0-5"
        }

    }
}

