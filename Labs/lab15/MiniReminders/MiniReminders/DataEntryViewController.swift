//
//  DataEntryViewController.swift
//  MiniReminders
//
//  Created by Ryu, Jason on 3/3/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import UIKit

class DataEntryViewController: UIViewController {
    
    
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myContent: UITextField!

    
    
    @IBAction func addReminder(_ sender: UIButton) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let dataModel = appDelegate.myRemindersData
        
        
        dataModel.addReminder(self.myContent.text ?? "smile", category: self.myCategory.text ?? "aa", date: self.myDatePicker.date, done: false)
       
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
}

