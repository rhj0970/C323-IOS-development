//
//  GuessingModel.swift
//  Team12GuessingGame
//
//  Created by Jason Ryu, Jihoon Ban, Kaiju Lyu on 2/20/20.
// hyryu@iu.edu, Jiban@iu.edu, kaijlv@iu.edu
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import Foundation

class GuessingModel {
    // Declare all the objects and varables
  
    // The parameter that recorded as the number that user input
    var userNum : Int
    
    // The parameter that counted as the number of steps that user guessed
    var countNum : Int
    
    // The number which system generalized as the one should be guessed from 0 to 50 range
    var guessingNum : Int = Int( arc4random_uniform(50) )
    
    // The result should be returned as string int he label text for each guessing
    var getString : String
    
    // The status if user wins or not
    var win : Bool = false
    
    
    init() {
    // Set up the initialization for the app
    
        userNum = 0
        countNum = 0
        getString = ""
    }

    
    func getCount() -> String {
        // Getter method for the 'countNum', return the total number of guessing times when user wins
        
        // Set up a variable to represent the result
        var stepsCount: String = ""
        
        
        if (win == false) {
            // When user still not win
            stepsCount = "Here will show your steps when you win"
            return stepsCount
        }
        else {
            // When user win, show the counting steps
            stepsCount = "You spent " + String(countNum) + " steps."
            return stepsCount
        }
    }
    
    
    func generateNum() -> Int {
        // Getter method for 'guessingNum', return the generated number
        
        return guessingNum
    }
    
    
    func getCompare() -> String {
        // Returning the comapring result from the getString method
        
        return getString
    }
    
    
    func restart() {
        // Reset all the values to 0, get called when the user clicks restart button.
        
        countNum = 0
        userNum = 0
        getString = ""
        guessingNum = Int( arc4random_uniform(50))
        win = false
        
    }
    

    func compareNumbers(userNum : Int, guessingNum : Int) {
        //Method to compare the number user inputs with the system generated number and return the result for getString
        
        if (userNum == guessingNum) {
        // In case if the number user guessed is equal to the system generated number
            
            // User guesses correctly and wins the game
            getString = "You win!! The answer is \(guessingNum)"
            
            win = true
            
            // Increment the 'countNum' for final correct guessing the user tries
            countNum += 1 // increment count everytime the user tries
        }
            
        else if (userNum > guessingNum) {
            // In case if the number user guessed is higher than the system generated number, or higher thant he range
            
            // User loses this time, system provides the clue for the answer
            getString = "Your number is higher than the answer"
            
            // Increment 'countNum' everytime the user tries
            countNum += 1
        }
        
        else if (userNum < guessingNum) {
            // In the case if the number user guessed is less than the system generated number, or smaller than the range
            
            // User loses this time, system provides the clue for the answer
            getString = "Your number is lower than the answer"
            
            // Increment count everytime the user tries
            countNum += 1
        }
    }
}
