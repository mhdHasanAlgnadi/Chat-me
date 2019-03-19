//
//  ViewController.swift
//  Chat me
//
//  Created by MHD HASAN on 3/16/19.
//  Copyright © 2019 MHD HASAN. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LogInController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    @IBAction func logInPressed(_ sender: UIButton) {
        SVProgressHUD.show()
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print("there was error")
            }
            else{
                print("Success")
                self.performSegue(withIdentifier: "goToChat", sender: self)
                SVProgressHUD.dismiss()
            }
        }
    }
    

}

