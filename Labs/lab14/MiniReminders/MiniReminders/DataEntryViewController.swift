//
//  DataEntryViewController.swift
//  MiniReminders
//
//  Created by Ryu, Jason on 2/27/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import UIKit

class DataEntryViewController: UIViewController {
    
    
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myContent: UITextField!

    
    
    @IBAction func addReminder(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
       // let myDataReference = appDelegate.myFirstToDoData
        //myDataReference.addReminder(myContent.text!, category: myCategory.text!, date: myDatePicker.date, done: false)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
}

