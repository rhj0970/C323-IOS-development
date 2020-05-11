//
//  ViewController.swift
//  Team12GuessingGame
//
//  Created by Jason Ryu, Jihoon Ban, kaiju Lyu on 2/20/20.
// hyryu@iu.edu, Jiban@iu.edu, kaijlv@iu.edu
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Setting up all the visial objects in the View screen
    
    // Blue label in the view screen, will return the result for each guessing
    @IBOutlet var answer: UILabel!
    
    // White input field, will take the number that user inputs
    @IBOutlet var input: UITextField!
    
    // Orange label, will return the counting steps once user wins
    @IBOutlet var count: UILabel!
    
    // Purple label, show user the guessing range
    @IBOutlet var guide: UILabel!
    
    // Import the backend model
    let myModel = GuessingModel()

    
    @IBAction func getAnswer(sender: UIButton) {
        // Get the result for user when the game started
        
        // Collect user's input
        var myInput : Int? = Int(input.text!)
        
        //print(myInput) // test case in console
        
        if (myInput == nil) {
            //Check if the user input the correct type of input
            
            //if the input is not an integer, then return a warning message
            answer.text = "Please enter a valid integer!"
        }
        else {
            // User's input is an integer
            
            // Get the comapring result by calling the compareNumber function in Model
            myModel.compareNumbers(userNum: myInput!, guessingNum: myModel.generateNum())
    

            // Show the compared result in the answer label
            answer.text = myModel.getCompare()
    
            // Convert result from type int to string
            var toStr : String = String(myModel.getCount())
            count.text = toStr
        }
        
    
    var toStr : String = String(myModel.getCount()) // convert int to string
    count.text = toStr // now it shows the converted string in the label.
        

    }
    
    
    @IBAction func restart() {
        //Restart the game to the initial status
        
        // Reset the answer label
        self.answer.text = ""
        
        // Reset the count label
        self.count.text = "Here will show your steps when you win"
        
        // Call the restart fucntion from the model so that it could set all variables to 0
        myModel.restart()
    }
    

    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        
        super.viewDidLoad()
    }
}

