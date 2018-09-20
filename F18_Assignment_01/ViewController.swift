//
//  ViewController.swift
//  F18_Assignment_01
//
//  Created by Ernilo Dallagnolo Junior on 2018-09-18.
//  Copyright © 2018 Ernilo Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textViewOutlet: UITextView!
    
    // Step 4:
    // Testing the classes in the viewController.swift file
    
    // In the viewController.swift file you will create an instance of your Schedule class, and add
    // some code to the bottom of the viewDidLoad function
    let schedule = Schedule()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textViewOutlet.text=""
        
        // Output the eventCount value by concatenating it to the textViewOutput.text String
        textViewOutlet.insertText("Events: \(schedule.eventCount)\n\n")
        
        // Call the addNewEvent function 3 or more time to add some test data to a couple of
        // events in the array
        schedule.addNewEvent(title: "Assignment: ", description: "Junior/'s birthday\n", dateString: "1989/02/02 23:59")
        schedule.addNewEvent(title: "Assignment: ", description: "My wife was born this day\n", dateString: "1992/06/22 23:59")
        schedule.addNewEvent(title: "Discussion: ", description: "Dota 2 International\n", dateString: "2018/10/19 23:59")
        
        // Output the eventCount value again by concatenating it to the textViewOutput.text String
        textViewOutlet.insertText("Events: \(schedule.eventCount)\n\n")
        
        // Last call the outputAllEvents finction concatenating it's return text to the
        // textViewOutput.text String
        textViewOutlet.insertText("\(schedule.outputAllEvents())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

