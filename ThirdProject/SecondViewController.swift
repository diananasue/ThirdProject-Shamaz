//
//  ThirdViewController.swift
//  ThirdProject
//
//  Created by Diana Nasue on 20/12/2018.
//  Copyright © 2018 Diana Nasue. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    /************************************************
     SecondViewController - class that inherits attributes
     and functions from UIViewController class
     ************************************************/
    
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
    
    /************************************************
     pastActivity - constant array used to hold
     the past activity that are used to form the
     past prompt to be displayed
     ************************************************/
    
    let pastTimeIndicator = [
        "2 days ago",
        "1 week ago",
        "2 weeks ago",
        "3 days ago",
        "yesterday"
    ]
    
    /************************************************
     pastTimeIndicator - constant array used to hold
     the past time indicator that are used to form the
     past prompt to be displayed
     ************************************************/
    
    let futureActivity = [
        "what you want to do",
        "where you will be",
        "what you plan to learn",
        "which country/place are you planning on visiting"
    ]
    
    /************************************************
     futureActivity - constant array used to hold
     the future activity that are used to form the
     future prompt to be displayed
     ************************************************/
    
    let futureTimeIndicator = [
        "next year",
        "tomorrow",
        "in a month from now",
        "next summer",
        "next Christmas",
        "on New Years Eve"
    ]
    
    /************************************************
     futureTimeIndicator - constant array used to hold
     the future time indicator that are used to form the
     future prompt to be displayed
     ************************************************/
    
    override func viewDidLoad() {
        
        /************************************************
         viewDidLoad - function that is inherited from
         UIViewController class and it is overriden
         ************************************************/
        
        super.viewDidLoad()
        
        var activityIndex = 0
        var timeIndicatorIndex = 0
        
        /************************************************
         activityIndex - integer variable that is used to
         hold the index of the activity to be displayed
         timeIndicatorIndex - integer variable that is used
         to hold the index of the time indicator to be displayed
         ************************************************/
        
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
        
        /************************************************
         if the past button was pressed, a random number
         is generated between 0 and the number of elements
         from the pastActivity array (11 in this case)
         the same is done for the time indicator
         the promptQuestion label is attributed with the
         text composed from "Describe", past activity and
         time indicator
         
         else if the future button was pressed a random number
         is generated between 0 and the number of elements
         from the futureActivity array (4 in this case)
         the same is done for the time indicator
         the promptQuestion label is attributed with the
         text composed from "Say", future activity and
         time indicator
         ************************************************/
    }
    
    
    @IBOutlet weak var promptQuestion: UILabel!
    
    /************************************************
     promptQuestion - label that will be filled with
     a prompt question formed based on which button
     was pressed
     ************************************************/
    
    
    @IBAction func whosNextButton(_ sender: UIButton) {
        whosNextLabel.text = "The next player is player number " +  String((arc4random_uniform(10)) + 1)
    }
    
    /************************************************
     whosNextButton - function associated with the
     who's next button which will set the text to
     be displayed within the label whosNextLabel
     ************************************************/

    @IBOutlet weak var whosNextLabel: UILabel!
    
    /************************************************
     whosNextLabel - label that will be filled with
     a number representing the next player
     ************************************************/
}
