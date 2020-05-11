//
//  ReminderTableViewController.swift
//  MiniReminders
//
//  Created by Ryu, Jason on 3/5/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import UIKit

class ReminderTableViewController: UITableViewController {

    //Reference to appDelegate:
    var myAppDelegate : AppDelegate?
    
    // get reference to model:
    var myModelReference : MiniRemindersDataModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // get appDelegate:
        self.myAppDelegate = UIApplication.shared.delegate as! AppDelegate
        //from appDelegate get reference to model:
        self.myModelReference = myAppDelegate?.myRemindersData
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Ask model for size of its data array
        if let howManyRows = self.myModelReference?.getReminders().count {
            return howManyRows
        }
            
        else {
            return 0
        }

    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ReminderTableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell", for: indexPath) as! ReminderTableViewCell

        //obatin non-optional reference to model:
        if let model = self.myModelReference {
            //get reference to array of reminder items from the model:
            let dataArray = model.getReminders()
            // get one Reminder item from array:
            let reminderItem = dataArray[indexPath.row]
            
            // populate labels:
            cell.reminderLabel.text = "Reminder: \(reminderItem.theContent)"
            cell.reminderLabel.text = "Category: \(reminderItem.theCategory)"
            print("in tableView...cellForRowAt() the reminder is: \(reminderItem.theContent)") // test cases
        }
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
