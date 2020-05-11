//
//  GameViewController.swift
//  Lab08
//
//  Created by Ryu, Jason on 2/6/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//



import UIKit

class GameViewController: UIViewController {
    
    
   
    var numberToBeGuessed : Int = Int( arc4random_uniform(100) )
    var currentGuess : Int = Int (arc4random_uniform(100))
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answer: UILabel!
    
    var mySecret = "the secret"
    
    @IBAction func getTextFieldInput(_ sender: UITextField, forEvent event: UIEvent) {
        
        
        print("in getTextFieldInput() \(sender.text ?? "")") // test cases
        
    }
    
    
    
    @IBAction func lower(_ sender: Any) {
        
  
        
        self.question.text = String(currentGuess)
        
        if (self.question.text == self.answer.text) {
             self.answer.text = "You Won"
        }

    }
    
    @IBAction func higher(_ sender: Any) {
        
      self.question.text = String(numberToBeGuessed)
        
        
        
        if (self.question.text == self.answer.text) {
            self.answer.text = "You Won"
       }
        
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }


}

