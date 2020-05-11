//
//  ViewController.swift
//  Shrdlu
//
//  Created by Ryu, Jason on 3/10/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import UIKit

class InteractionViewController: UIViewController {
  
    @IBOutlet weak var textBox: UITextView!
    @IBOutlet weak var send: UIButton!
    @IBOutlet weak var type: UITextField!
    
    
    let myModel = Shrdlu()
    
    @IBAction func getInput(sender: UIButton) {
        let myInput : String = type.text!
      
        textBox.text = myModel.oneInteraction(input: myInput)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

