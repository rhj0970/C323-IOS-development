//
//  HistoryViewController.swift
//  Lab09
//
//  Created by Ryu, Jason on 2/11/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    var myAppDelegate : AppDelegate?
    var myModel : GuessingGameModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myAppDelegate = UIApplication.shared.delegate as? AppDelegate         // obtain reference to our app's appdelegate object
        self.myModel = self.myAppDelegate?.myGameModel

    }
    
    @IBAction func reloadHistory(_ sender: UIButton) {
        
        let EnteredGuess = self.input.text ?? ""
        
        print("The user entered \(EnteredGuess)")
        
    }


}
