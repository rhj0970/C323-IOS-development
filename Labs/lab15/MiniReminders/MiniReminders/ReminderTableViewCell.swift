//
//  ReminderTableViewCell.swift
//  MiniReminders
//
//  Created by Ryu, Jason on 3/5/20.
//  Copyright © 2020 Ryu, Jason. All rights reserved.
//

import UIKit

class ReminderTableViewCell: UITableViewCell {

    @IBOutlet weak var reminderLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var completeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
