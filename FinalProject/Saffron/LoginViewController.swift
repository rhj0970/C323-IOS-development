//
//  LoginViewController.swift
//  Saffron
//
//  Created by Ban, Ji Hoon, Jason Ryu, Michael Coffman on 5/7/20.
//  Copyright © 2020 Team Saffron. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextField!

    @IBOutlet weak var password: UITextField!

    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginProcess(_ sender: Any) {
        
        let user = username.text
        let pass = password.text
        if (user == "c323" && pass == "hello") {
            return
            
        }
        
        else {
            username.text = "Invalid username"
            password.text = "Invalid password"
        }
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
