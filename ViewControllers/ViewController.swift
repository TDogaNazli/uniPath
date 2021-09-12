//
//  ViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 2.07.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore
import SafariServices
import UserNotifications

class ViewController: UIViewController {


    @IBOutlet weak var login1Button: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signUpLabel: UIButton!
    @IBOutlet weak var instaButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBAction func instaTapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.instagram.com/unipathapp/?hl=en")!)
        present(vc, animated: true)
    }
    @IBAction func mediumTapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://medium.com/unipath")!)
        present(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        nameTextField.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        
        let content1 = UNMutableNotificationContent()
        content1.title = "Günlük Hatırlatma"
        content1.body = "SAT/ACT ve diğer sınavlara çalışmayı unutma!"
        
        var dateComponents1 = DateComponents()
        dateComponents1.calendar = Calendar.current
        
        dateComponents1.hour = 19
        dateComponents1.minute = 10
        dateComponents1.weekday = 2
        
        let trigger1 = UNCalendarNotificationTrigger(dateMatching: dateComponents1, repeats: true)
        
        let request1 = UNNotificationRequest(identifier: UUID().uuidString, content: content1, trigger: trigger1)
        
        let content2 = UNMutableNotificationContent()
        content2.title = "Günlük Hatırlatma"
        content2.body = "Ders dışı aktivitelerine zaman ayırmayı unutma!"
        
        var dateComponents2 = DateComponents()
        dateComponents2.calendar = Calendar.current
        
        dateComponents2.hour = 16
        dateComponents2.minute = 10
        dateComponents1.weekday = 3
        
        let trigger2 = UNCalendarNotificationTrigger(dateMatching: dateComponents2, repeats: true)
        
        let request2 = UNNotificationRequest(identifier: UUID().uuidString, content: content2, trigger: trigger2)
        
        let content3 = UNMutableNotificationContent()
        content3.title = "Günlük Hatırlatma"
        content3.body = "SAT/ACT ve diğer sınavlara çalışmayı unutma!"
        
        var dateComponents3 = DateComponents()
        dateComponents3.calendar = Calendar.current
        
        dateComponents3.hour = 19
        dateComponents3.minute = 10
        dateComponents3.weekday = 4
        
        let trigger3 = UNCalendarNotificationTrigger(dateMatching: dateComponents3, repeats: true)
        
        let request3 = UNNotificationRequest(identifier: UUID().uuidString, content: content3, trigger: trigger3)
        
        let content4 = UNMutableNotificationContent()
        content4.title = "Günlük Hatırlatma"
        content4.body = "Üniversite araştırmayı/başvurularını hazırlamayı unutma!"
        
        var dateComponents4 = DateComponents()
        dateComponents4.calendar = Calendar.current
        
        dateComponents4.hour = 19
        dateComponents4.minute = 10
        dateComponents4.weekday = 5
        
        let trigger4 = UNCalendarNotificationTrigger(dateMatching: dateComponents4, repeats: true)
        
        let request4 = UNNotificationRequest(identifier: UUID().uuidString, content: content4, trigger: trigger4)
        
        let content5 = UNMutableNotificationContent()
        content5.title = "Günlük Hatırlatma"
        content5.body = "Ders dışı aktivitelerine zaman ayırmayı unutma!"
        
        var dateComponents5 = DateComponents()
        dateComponents5.calendar = Calendar.current
        
        dateComponents5.hour = 16
        dateComponents5.minute = 10
        dateComponents5.weekday = 6
        
        let trigger5 = UNCalendarNotificationTrigger(dateMatching: dateComponents5, repeats: true)
        
        let request5 = UNNotificationRequest(identifier: UUID().uuidString, content: content5, trigger: trigger5)
        
        let content6 = UNMutableNotificationContent()
        content6.title = "Günlük Hatırlatma"
        content6.body = "Üniversite araştırmayı/başvurularını hazırlamayı unutma!"
        
        var dateComponents6 = DateComponents()
        dateComponents6.calendar = Calendar.current
        
        dateComponents6.hour = 14
        dateComponents6.minute = 10
        dateComponents6.weekday = 7
        
        let trigger6 = UNCalendarNotificationTrigger(dateMatching: dateComponents6, repeats: true)
        
        let request6 = UNNotificationRequest(identifier: UUID().uuidString, content: content6, trigger: trigger6)
        
        center.add(request1) { (error) in
            
        }
        center.add(request2) { (error) in
            
        }
        center.add(request3) { (error) in
            
        }
        center.add(request4) { (error) in
            
        }
        center.add(request5) { (error) in
            
        }
        center.add(request6) { (error) in
            
        }
        
    }
    
    func setUpElements(){
        errorLabel.alpha = 0
        Utilites.styleTextField(textfield: nameTextField)
        Utilites.styleTextField(textfield: emailTextField)
        Utilites.styleTextField(textfield: passwordTextField)
        Utilites.styleFilledButton(button: signUpButton)
        Utilites.styleFilledButton(button: signUpLabel)
    }
    
    func validateFields() -> String? {
        if nameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all the fields."
        }
        return nil
    }
    
    @IBAction func login1Tapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "login2_vc") as! loginViewController
        present(vc, animated: true)
    }
    @IBAction func tapButton(_ sender: Any) {
        
        //Validate the fields
        let error = validateFields()
        
        if error != nil{
            self.showError(message: error!)
        }
        else{
            let name = nameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            //Create the user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                //check for errors
                if err != nil{
                    self.showError(message: "Error creating user.")
                }
                else{
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data: ["name":name, "uid":result!.user.uid]) { (error) in
                        if error != nil {
                            self.showError(message: "Error creating user.")
                        }
                    }
                    self.transitionToHome()
                }
            }
        }
    }
    
    func showError( message:String){
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    func transitionToHome(){
        let vc = storyboard?.instantiateViewController(identifier: "lise_vc") as! liseViewController
                    present(vc, animated: true)
    }
 
}

