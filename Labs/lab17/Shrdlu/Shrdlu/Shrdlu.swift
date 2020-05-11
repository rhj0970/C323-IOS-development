//
//  Shrdlu.swift
//  Shrdlu
//
//  Created by Ryu, Jason on 3/10/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import Foundation

class Shrdlu {
    
    let joyWords: [String]
    let disgustWords: [String]
    let fearWords: [String]
    let angerWords: [String]
    let sadWords: [String]
    

    init() {
       joyWords = ["happy", "happiness", "joy", "yay", "yeah"]
       disgustWords = ["gross", "sick", "shock", "yulk", "phew"]
       fearWords = ["scared", "fear", "terror", "worry", "anxiety"]
       angerWords = ["OMG","outrage", "offend", "anger", "fury"]
       sadWords = ["depressed", "discourage", "tearful", "upset", "unhappy"]
    }
    
    
    
    func getWordsFromString(userInput: String) -> [String] { // take a string and split it into words
        
        let inputLowerCase = userInput.lowercased() // convert all letter to lowercase
        let inputWithoutNewline = inputLowerCase.components(separatedBy: "\n") // "\n" to create new line"
        let inputWords = inputWithoutNewline[0].components(separatedBy: " ") // used "" to split words
        
        return inputWords // return found words in an array of strings
    }
    
    
    
    
    
    
    
    
    
}
