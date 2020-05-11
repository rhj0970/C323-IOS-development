//
//  TabGuessingGameViewController.swift
//  Lab07
//
//  Created by Ryu, Jason on 2/4/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//



import UIKit

class TabGuessingGameViewController: UIViewController {
    
    
    @IBOutlet var question: UILabel!
    var numberToBeGuessed : Int = Int( arc4random_uniform(100) )
    var currentGuess : Int = Int (arc4random_uniform(100))
    @IBOutlet var guessed: UILabel!
    
    @IBAction func start(_ sender: Any) {
        self.question.text = String(numberToBeGuessed)
 
    }
    
    
    @IBAction func lower(_ sender: Any) {
        
  
        
        self.question.text = String(currentGuess)
        
        if (self.question.text == self.guessed.text) {
             self.guessed.text = "You Won"
        }

    }
    
    @IBAction func higher(_ sender: Any) {
        
      self.question.text = String(numberToBeGuessed)
        
        
        
        if (self.question.text == self.guessed.text) {
            self.guessed.text = "You Won"
       }
        
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }


}

