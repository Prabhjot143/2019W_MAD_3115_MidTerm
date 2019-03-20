//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by prabhjot kaur on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailtxt: UITextField!
    
    @IBOutlet weak var pwdtxt: UITextField!
    
    @IBOutlet weak var RememberMe: UISwitch!
   
    override func viewDidLoad() {
        super.viewDidLoad()
     let userDefault = UserDefaults.standard
      if let email = userDefault.string(forKey: "userEmail"){
        emailtxt.text =  email
         if let password = userDefault.string(forKey: "userPassword"){
            pwdtxt.text =  password
            
        }
        RememberMe.isOn = true
        }
        
    }

    @IBAction func loginBtn(_ sender: Any) {
        let email = emailtxt.text
        let password = pwdtxt.text
        if(email == "admin@123" && password == "admin")
        {
             let userDefault = UserDefaults.standard
            if RememberMe.isOn
            {
                userDefault.set(email, forKey: "userEmail")
                userDefault.set(password, forKey: "userPassword")
            }
            else
            {
                userDefault.removeObject(forKey: "userEmail")
                 userDefault.removeObject(forKey: "userPassword")
            }
            let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController(WithIdentifier : "StudentEntryViewController") as! StudentEntryViewController
            self.present Home VC
        }
        
    }
    
}

