//
//  LogInViewController.swift
//  E-Police Station
//
//  Created by Apple on 26/12/23.
//

import UIKit

class LogInViewController: UIViewController,UITextFieldDelegate {
    
    //Text Fields
    @IBOutlet weak var UserEmailTextField: UITextField!
    @IBOutlet weak var UserPasswordTextField: UITextField!
    
    //Button Outlate
    @IBOutlet weak var Loginbtn: UIButton!
    @IBOutlet weak var createnewaccountbtn: UIButton!
    
    //Button Action
    @IBAction func LogInBtn(_ sender: Any) {
        
    }
    
    @IBAction func CreateNewAcoountBtn(_ sender: Any) {
        let main = storyboard?.instantiateViewController(identifier: "RegistrationViewController") as! RegistrationViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    
    //Text Fields Actions
    @IBAction func UserEmailTextFieldAction(_ sender: Any) {
        if let Wrong = UserEmailTextField.text {
            if emailinvalidate(email: Wrong) != nil
            {
                UserEmailTextField.layer.borderColor = UIColor.red.cgColor
                UserEmailTextField.text = ""
            }
            else
            {
                UserEmailTextField.layer.borderColor = UIColor.black.cgColor
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextFiled_Button_edits()
        UserPasswordTextField.isSecureTextEntry = true
        UserPasswordTextField.delegate = self
        

    }
    
    func TextFiled_Button_edits(){
        Loginbtn.layer.cornerRadius = 20
        Loginbtn.layer.masksToBounds = true
        
        UserEmailTextField.layer.cornerRadius = 20
        UserEmailTextField.layer.masksToBounds = true
        UserEmailTextField.layer.borderWidth = 0.6
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: UserEmailTextField.frame.height))
        UserEmailTextField.leftView = paddingView
        UserEmailTextField.leftViewMode = .always
        
        UserPasswordTextField.layer.cornerRadius = 20
        UserPasswordTextField.layer.masksToBounds = true
        UserPasswordTextField.layer.borderWidth = 0.6
        let paddingView1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: UserPasswordTextField.frame.height))
        UserPasswordTextField.leftView = paddingView1
        UserPasswordTextField.leftViewMode = .always
        
        
    }
    
    func emailinvalidate(email:String) -> String?
    {
        let pattern = "[0-9a-z._%+-]+@[a-z0-9.-]+\\.[a-z]{3}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", argumentArray: [pattern])
        let isValidEmailAddress = predicate.evaluate(with: email)
        if isValidEmailAddress == false
        {
            return "email not valid"
            
            
        }
        return nil
    }
}


