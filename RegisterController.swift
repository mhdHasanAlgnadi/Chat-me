//
//  RegisterController.swift
//  Chat me
//
//  Created by MHD HASAN on 3/17/19.
//  Copyright © 2019 MHD HASAN. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterController : UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        
        SVProgressHUD.show()
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print("Error")
            }
            else {
                print("Successful")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToChat", sender: self)
                
            }
        }
        
    }
    
}
