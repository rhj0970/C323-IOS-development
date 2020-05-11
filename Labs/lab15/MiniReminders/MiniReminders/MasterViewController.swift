//
//  DataEntryViewController.swift
//  EmbeddedReminders
//
//  Created by Ryu, Jason on 3/5/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
 
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet weak var myContent: UITextField!

     //add reminder action in the data entry view controller:
    @IBAction func addReminder(_ sender: UIButton) {
        // get model referece:
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let dataModel = appDelegate.myRemindersData
        
        
        //get view information into the model:
        dataModel.addReminder(self.myContent.text ?? "smile", category: self.myCategory.text ?? "aa", date: self.myDatePicker.date, done: false)
        
        //ask "sibiling" view controller to reload data from model
        
       // let's test if we are inside a tab bar controller:
        if let container = self.splitViewController {
            //since we got inside the "if let" it means that the self controller is contained by a tab bar controller.
            let sibling = container.viewControllers {
                //since we got inside "if let", meaning that we have sibiling view controllers.
                if sibling.count > 1 {
                print("we have at least one sibling \(sibling[0])") // test case
                    
                    if let tableViewController = sibling[1] as? UITableViewController {
                        // and its view should be a UITableView
                        if let tableView = tableViewController.view as? UITableView{
                            tableView.reloadData()
                        }
                    }

                }//count end
                
            }// if sibling end
            
        }// if container end
        
    }//action end


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
}//class end

