//
//  GameViewController.swift
//  Lab09
//
//  Created by Ryu, Jason on 2/11/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//



import UIKit

class GameViewController: UIViewController {
    
    // instance variable to refer to the appDelegate:
    // instance variable to refer to the Model:
    var myAppDelegate : AppDelegate?
    var myModel : GuessingGameModel?
    
   

    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var input: UITextField!
    
    
    
    var mySecret = "the secret"
    
    @IBAction func enterGuessAction(_ sender: UIButton) {
        
        let EnteredGuess = self.input.text ?? ""
        
         // myModel.compare 
        print("The user entered \(EnteredGuess)")
        
    }
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate         // obtain reference to our app's appdelegate object
        self.myModel = self.myAppDelegate?.myGameModel
        
        
        // Do any additional setup after loading the view.
    }


}

