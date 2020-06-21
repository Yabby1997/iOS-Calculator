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
    
    var initialInput = true
    var zeroAddable = false
    var operatorAddable = true
    var dotAddable = true

    var operand = 0.0
    var operatorToken = ""
    
    func inputInitiate(){
        initialInput = true
        operatorAddable = false
        dotAddable = true
        zeroAddable = false
    }
    
    @IBAction func allClear(_ sender : Any){
        displayLabel.text = "0"
        operatorToken = ""
        operand = 0
        inputInitiate()
    }
    
    @IBAction func numTapped(_ sender : UIButton){
        if initialInput{
            displayLabel.text! = sender.currentTitle!
        }
        else{
            displayLabel.text! += sender.currentTitle!
        }
        initialInput = false
        operatorAddable = true
        zeroAddable = true
    }
    
    @IBAction func zeroTapped(_ seender : Any){
        if zeroAddable{
            displayLabel.text! += "0"
        }
    }
    
    
    @IBAction func dotTapped(_ sender : Any){
        if dotAddable{
            if initialInput{
                displayLabel.text! = "0"
            }
            displayLabel.text! += "."
            initialInput = false
            dotAddable = false
            zeroAddable = true
        }
    }
    
    @IBAction func operatorTapped(_ sender : UIButton){
        if operatorAddable{
            let currentInput = Double(displayLabel.text!)!
            if operatorToken == ""{
                operatorToken = sender.currentTitle!
                if operand == 0{
                    operand = currentInput
                }
            }
            else{
                switch operatorToken{
                case "÷":
                    operand /= currentInput
                    break
                
                case "×":
                    operand *= currentInput
                    break
                
                case "-":
                    operand -= currentInput
                    break
                
                case "+":
                    operand += currentInput
                    break
                    
                default:
                    break
                }
            }
            inputInitiate()
            if sender.currentTitle! == "="{
                operatorToken = ""
                operatorAddable = true
            }
            else{
                operatorToken = sender.currentTitle!
            }
            displayLabel.text! = String(operand)
            print(operand)
        }
    }
}
