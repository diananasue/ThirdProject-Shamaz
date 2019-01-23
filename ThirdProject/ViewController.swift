//
//  SecondViewController.swift
//  ThirdProject
//
//  Created by Diana Nasue on 20/12/2018.
//  Copyright © 2018 Diana Nasue. All rights reserved.
//

import UIKit

var pressedButton = false

/************************************************
 pressedButton - boolean variable used to hold
  the information of which button was pressed
    = false (PAST button was pressed)
    = true (FUTURE button was pressed)
 ************************************************/

class ViewController: UIViewController {
    
/************************************************
     ViewController - class that inherits attributes
     and functions from UIViewController class
************************************************/
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    /************************************************
     viewDidLoad - function that is inherited from
    UIViewController class and it is overriden
     ************************************************/
    
    @IBAction func pastButton(_ sender: UIButton) {
        pressedButton = false
    }
    /************************************************
     pastButton - function associated with the past
     button. When it is pressed the variable pressedButton
     is set to false
    ************************************************/
    
    
    @IBAction func futureButton(_ sender: UIButton) {
        pressedButton = true
    }
    /************************************************
     futureButton - function associated with the future
     button. When it is pressed the variable pressedButton
     is set to true
     ************************************************/

}
