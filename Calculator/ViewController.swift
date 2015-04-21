//
//  ViewController.swift
//  Calculator
//
//  Created by K on 3/12/15.
//  Copyright (c) 2015 KNM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypeingANumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypeingANumber {
            display.text = display.text! + digit
        } else{
            display.text = digit
            userIsInTheMiddleOfTypeingANumber = true
        }
        //println("digit= \(digit)")
    }

    @IBAction func enter() {
        userIsInTheMiddleOfTypeingANumber = false
    }

}

