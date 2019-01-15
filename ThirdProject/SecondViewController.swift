//
//  SecondViewController.swift
//  ThirdProject
//
//  Created by Diana Nasue on 20/12/2018.
//  Copyright © 2018 Diana Nasue. All rights reserved.
//

import UIKit

var pressedButton = false
/*
 pressedButton = false (PAST button was pressed)
 pressedButton = true (FUTURE button was pressed)
 */

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pastButton(_ sender: UIButton) {
        pressedButton = false
    }
    
    
    @IBAction func futureButton(_ sender: UIButton) {
        pressedButton = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
