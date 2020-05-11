//
//  MiniRemindersDataModel.swift
//  MiniReminders
//
//  Created by Ryu, Jason on 2/27/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import Foundation


class MiniRemindersDataModel {
    // all reminders will be stored in array
    
    var myData: [Item] = [Item(pContent: "Teach class", pCategory: "work", pDate: Date(timeIntervalSinceNow: TimeInterval(0)), pDone : false)]
    
    func addReminder(_ content: String, category: String, date: Date, done: Bool) {
        self.myData.append(Item(pContent: content, pCategory: category, pDate: date, pDone: done))
      }
    
    func getReminders() -> [Item] {
        return self.myData
    }
    
}
    

    class Item {
        var theContent : String
        var theCategory : String
        var theDate : Date
        var theDoneFlag : Bool
        
    
        init(pContent: String, pCategory: String, pDate: Date, pDone: Bool) {
        self.theContent = pContent
        self.theCategory = pCategory
        self.theDate = pDate
        self.theDoneFlag = pDone
    }
    
        
    
    
    
  
 
}
