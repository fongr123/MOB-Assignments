//
//  ViewController.swift
//  class3
//
//  Created by Richard Fong on 6/8/15.
//  Copyright (c) 2015 Richard Fong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

// The below deals with the stepper
    @IBOutlet weak var flourLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBAction func stepperChanged(sender: AnyObject) {
        
        println( stepper.value)
        
        var servings: Int = Int(stepper.value)
        var amountOfFlour: String = String(servings * 2)
        var instruction: String = "Use " + amountOfFlour + " cups of flour."
        flourLabel.text = instruction
    }
    
// The below deals with the button
    @IBOutlet weak var textField: UITextField!
    @IBAction func buttonClicked(sender: AnyObject) {
        
        var servings: Int = 1
        println(servings)
        var username:String = "Richard"
        username = String(5)
        username = textField.text
        println("Hello " + username)
        println("The number of servings is " + String(servings))
        println("Pour " + String(servings*2) + " Cups of Flour. ")
        
    }
    
// The below deals with if and else statements
    
    @IBAction func ifButton(sender: AnyObject) {
        
        var message: String = ""
        var amount = 5
        if (amount == 5) {
            println ( "Yes it is 5.")
            }
        else {
            println ("No it is not 5.")
            }
        
        var isTrue: Bool = true
        
        if (isTrue) {
            println("It's true!")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

