//
//  ViewController.swift
//  Calculator
//
//  Created by yabby on 2020/01/20.
//  Copyright © 2020 yabby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var displayLabel: UILabel!
    var operatorAddable = true
    
    @IBAction func allClear(_ sender : Any){
        displayLabel.text = ""
        operatorAddable = true
    }
    
    @IBAction func oneTapped(_ sender : Any){
        displayLabel.text! += "1"
        operatorAddable = true
    }
    
    @IBAction func twoTapped(_ seender : Any){
        displayLabel.text! += "2"
        operatorAddable = true
    }
    
    @IBAction func threeTapped(_ seender : Any){
        displayLabel.text! += "3"
        operatorAddable = true
    }
    
    @IBAction func fourTapped(_ seender : Any){
        displayLabel.text! += "4"
        operatorAddable = true
    }
    
    @IBAction func fiveTapped(_ seender : Any){
        displayLabel.text! += "5"
        operatorAddable = true
    }
    
    @IBAction func sixTapped(_ seender : Any){
        displayLabel.text! += "6"
        operatorAddable = true
    }
    
    @IBAction func sevenTapped(_ seender : Any){
        displayLabel.text! += "7"
        operatorAddable = true
    }
    
    @IBAction func eightTapped(_ seender : Any){
        displayLabel.text! += "8"
        operatorAddable = true
    }
    
    @IBAction func nineTapped(_ seender : Any){
        displayLabel.text! += "9"
        operatorAddable = true
    }
    
    @IBAction func zeroTapped(_ seender : Any){
        displayLabel.text! += "0"
        operatorAddable = true
    }
    
    @IBAction func plusTapped(_ sender : Any){
        if operatorAddable && displayLabel.text! != ""{
            displayLabel.text! += "+"
            operatorAddable = false
        }
    }
    
    @IBAction func minusTapped(_ sender : Any){
        if operatorAddable && displayLabel.text! != ""{
            displayLabel.text! += "-"
            operatorAddable = false
        }
    }
    
    @IBAction func multiplyTapped(_ sender : Any){
        if operatorAddable && displayLabel.text! != ""{
            displayLabel.text! += "x"
            operatorAddable = false
        }
    }
    
    @IBAction func divideTapped(_ sender : Any){
        if operatorAddable && displayLabel.text! != ""{
            displayLabel.text! += "/"
            operatorAddable = false
        }
    }
    
}

