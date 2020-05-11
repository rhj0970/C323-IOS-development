//
//  GuessingModel.swift
//  Team12GuessingGame
//
//  Created by Ryu, Jason on 2/20/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import Foundation

class GuessingModel {

  var randNum : Int
  var userNum : Int
  var count : Int
  
  
  init() {
      randNum = 0
      userNum = 0
      count = 0
  }
    func setUserNum (num1: Int) {
        let num1 = userNum
    }
    
    func setRandNum (num2: Int) {
        let num2 = randNum
    }

    func compare(num1 : Int, num2 : Int) {
        let num2 = Int( arc4random_uniform(100) )
        if (num1 == num2) {
            
        }
        else if (num1 > num2) {
            
        }
        
        else  {
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    
}
