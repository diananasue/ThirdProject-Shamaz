//
//  ThirdViewController.swift
//  ThirdProject
//
//  Created by Diana Nasue on 20/12/2018.
//  Copyright © 2018 Diana Nasue. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    let pastActivity = [
        "your day",
        "something you did",
        "an interesting event that happened",
        "something that you ate",
        "a place that you went",
        "something good that happened to you",
        "something bad that happened to you",
        "a feeling that you had",
        "something that you accomplished",
        "a movie that you saw",
        "a book that you started"
    ]
    
    let pastTimeIndicator = [
        "2 days ago",
        "1 week ago",
        "2 weeks ago",
        "3 days ago",
        "yesterday"
    ]
    
    let futureActivity = [
        "what you want to do",
        "where you will be",
        "what you plan to learn",
        "which country/place are you planning on visiting"
    ]
    
    let futureTimeIndicator = [
        "next year",
        "tomorrow",
        "in a month from now",
        "next summer",
        "next Christmas",
        "on New Years Eve"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var activityIndex = 0
        var timeIndicatorIndex = 0
        
        if pressedButton == false
        {
            activityIndex = Int(arc4random_uniform(UInt32(pastActivity.count)))
            timeIndicatorIndex = Int(arc4random_uniform(UInt32(pastTimeIndicator.count)))
            promptQuestion.text = "Describe" + " " + pastActivity[activityIndex] + " " + pastTimeIndicator[timeIndicatorIndex]
        }
        else
        {
            activityIndex = Int(arc4random_uniform(UInt32(futureActivity.count)))
            timeIndicatorIndex = Int(arc4random_uniform(UInt32(futureTimeIndicator.count)))
            promptQuestion.text = "Say" + " " + futureActivity[activityIndex] + " " + futureTimeIndicator[timeIndicatorIndex]
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var promptQuestion: UILabel!
    
    @IBOutlet weak var responseToQuestion: UITextField!
    
    @IBAction func whosNextButton(_ sender: UIButton) {
        whosNextLabel.text = "The next player is player number " +  String((arc4random_uniform(10)) + 1)
    }
    /*
     @IBOutlet weak var whosNextLabel: UILabel!
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var whosNextLabel: UILabel!
}
