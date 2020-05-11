//
//  GuessingGameModel.swift
//  Lab09
//
//  Created by Ryu, Jason on 2/11/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import Foundation



class GuessingGameModel {

    
    var numberToBeGuessed = Int (arc4random_uniform(100))
    var currentGuess : Int
    
    
    
    init() {
        numberToBeGuessed = 0
        currentGuess = 0
    }
    

    
    func compare(currentGuess: Int) -> String {
        
        if (self.currentGuess == numberToBeGuessed) {
            return ("Correct!!")
        }
        
     return ("Test Case")
    }
    
    
    
    
    
    
    
    
}
