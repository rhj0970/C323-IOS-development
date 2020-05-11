//
//  ViewController.swift
//  FlashCards
//
//  Created by Ryu, Jason on 1/23/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class LabFourViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showQuestion(_ sender: Any) {
        self.questionLabel.text = "How old are you?"
        self.answerLabel.text = "(...try guessing...)"
    
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        self.answerLabel.text = "I'm almost 20 years old! (that was the swift programming language's answer"
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

