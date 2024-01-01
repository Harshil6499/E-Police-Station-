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
    @IBOutlet weak var showPasswordButton: UIButton!
    
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
            UserEmailTextField.layer.borderColor = UIColor.blue.cgColor
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // Dismiss the keyboard
            textField.resignFirstResponder()
            return true
        }

        // Check if the text field is empty when it loses focus
        func textFieldDidEndEditing(_ textField: UITextField) {
            if textField.text?.isEmpty ?? true {
                // Animate the empty text field
                animateEmptyTextField(textField)
            }
        }

        // Function to animate the empty text field
    func animateEmptyTextField(_ textField: UITextField) {
            // Create a shake animation
            let shakeAnimation = CABasicAnimation(keyPath: "position")
            shakeAnimation.duration = 0.1
            shakeAnimation.repeatCount = 2
            shakeAnimation.autoreverses = true

            // Set the initial and final positions for the animation
            let fromPoint = CGPoint(x: textField.center.x - 5, y: textField.center.y)
            let toPoint = CGPoint(x: textField.center.x + 5, y: textField.center.y)
            shakeAnimation.fromValue = NSValue(cgPoint: fromPoint)
            shakeAnimation.toValue = NSValue(cgPoint: toPoint)

            // Apply the animation to the text field's layer
            textField.layer.add(shakeAnimation, forKey: "position")
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        UserEmailTextField.delegate = self
//        UserPasswordTextField.delegate = self

        UserEmailTextField.layer.borderColor = UIColor.gray.cgColor
        UserEmailTextField.layer.borderWidth = 1.0
        
        UserEmailTextField.delegate = self
        
        
        TextFiled_Button_edits()
        UserPasswordTextField.isSecureTextEntry = true
        UserPasswordTextField.delegate = self
        
        showPasswordButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
    }
    
    func all_in_1(to textField: UITextField) {
        textField.layer.cornerRadius = 20
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 0.7

        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        
    }
    func TextFiled_Button_edits(){
        Loginbtn.layer.cornerRadius = 20
        Loginbtn.layer.masksToBounds = true
        
        all_in_1(to: UserEmailTextField)
        all_in_1(to: UserPasswordTextField)
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
    
    @objc func togglePasswordVisibility() {
            // Toggle the secureTextEntry property of the UITextField
        UserPasswordTextField.isSecureTextEntry.toggle()

            // Change the button title based on the password visibility
            let buttonTitle = UserPasswordTextField.isSecureTextEntry ? "Show" : "Hide"
            showPasswordButton.setTitle(buttonTitle, for: .normal)
        }
}

