//
//  ViewController.swift
//  Calculator
//
//  Created by Donald Pinckney on 11/28/16.
//  Copyright © 2016 Donald Pinckney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var userIsInMiddleOfTyping = false
    
    @IBAction func digitTapped(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        let currentDisplayText = displayLabel.text!
        
        if userIsInMiddleOfTyping {
            displayLabel.text = currentDisplayText + digit
        } else {
            displayLabel.text = digit
        }
        
        userIsInMiddleOfTyping = true
    }

    @IBAction func clearTapped(_ sender: UIButton) {
        displayLabel.text = "0"
        userIsInMiddleOfTyping = false
        
    }

}

