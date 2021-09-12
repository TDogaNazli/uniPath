//
//  loginViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 15.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class loginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
    }
    
    func setUpElements(){
        errorLabel.alpha = 0
        Utilites.styleTextField(textfield: emailTextField)
        Utilites.styleTextField(textfield: passwordTextField)
        Utilites.styleFilledButton(button: loginButton)
    }

    @IBAction func loginTapped(_ sender: Any) {
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if error != nil{
                self.errorLabel.text = "Invalid password or email."
                self.errorLabel.alpha = 1
            }
            else{
                self.transitionToHome()
            }
        }
    }
    
    func transitionToHome(){
        let vc = storyboard?.instantiateViewController(identifier: "lise_vc") as! liseViewController
                    present(vc, animated: true)
    }
}
