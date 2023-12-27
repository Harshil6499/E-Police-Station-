//
//  RegistrationViewController.swift
//  E-Police Station
//
//  Created by Apple on 27/12/23.
//

import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {
    
    //Outlates Text Fields And Button
    @IBOutlet weak var UserNameTXT: UITextField!
    @IBOutlet weak var UserEmailTXT: UITextField!
    @IBOutlet weak var UserNumberTXT: UITextField!
    @IBOutlet weak var UserGenderTXT: UITextField!
    @IBOutlet weak var UsePasswordTXT: UITextField!
    @IBOutlet weak var UserReEnterPasswordTXT: UITextField!
    
    @IBOutlet weak var ConfirmRegistrationBTN: UIButton!
    
    
    //Actions Text Fields And Button
    @IBAction func UserNameTxt(_ sender: Any) {
        if UserNameTXT.text == ""{
            UserNameTXT.layer.borderColor = UIColor.red.cgColor
           
        }
        else{
            UserNameTXT.layer.borderColor = UIColor.black.cgColor
        }
    }
    @IBAction func UserEmailTxt(_ sender: Any) {
        if let Wrong = UserEmailTXT.text{
            if emailinvalidate(email: Wrong) != nil{
                UserEmailTXT.layer.borderColor = UIColor.red.cgColor
                UserEmailTXT.text = ""
            }
            else{
                UserEmailTXT.layer.borderColor = UIColor.black.cgColor
            }
                
        }
    }
    @IBAction func UserNumberTxt(_ sender: Any){
        if UserNumberTXT.text == "+91  " {
            UserNameTXT.layer.borderColor = UIColor.red.cgColor
        }
        else{
            UserNameTXT.layer.borderColor = UIColor.black.cgColor
        }
    }
    @IBAction func UserGenderTxt(_ sender: Any) {
        validatePasswords()
    }
    
    @IBAction func UsePasswordTxt(_ sender: Any) {
        validatePasswords()
    }
    
    @IBAction func UserReEnterPasswordTxt(_ sender: Any) {
        if UserReEnterPasswordTXT.text == "" {
            UserReEnterPasswordTXT.layer.borderColor = UIColor.red.cgColor
        }
        else{
            UserReEnterPasswordTXT.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    @IBAction func ConfirmRegistrationBtn(_ sender: Any) {
        
    }
    
    func validatePasswords() {
            let password = UsePasswordTXT.text ?? ""
            let reEnterPassword = UserReEnterPasswordTXT.text ?? ""

            if password.isEmpty || reEnterPassword.isEmpty {
                // At least one of the password fields is empty
                UsePasswordTXT.layer.borderColor = UIColor.red.cgColor
                UserReEnterPasswordTXT.layer.borderColor = UIColor.red.cgColor
            } else if password == reEnterPassword {
                // Passwords match
                UsePasswordTXT.layer.borderColor = UIColor.black.cgColor
                UserReEnterPasswordTXT.layer.borderColor = UIColor.black.cgColor
            } else {
                // Passwords do not match
                UsePasswordTXT.layer.borderColor = UIColor.red.cgColor
                UserReEnterPasswordTXT.layer.borderColor = UIColor.red.cgColor
            }
        }
    
    
    private func applyTextFieldStyles(to textField: UITextField) {
        textField.layer.cornerRadius = 20
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 0.7

        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
    }
    
    private func Edits_Text_Fields(){
        applyTextFieldStyles(to: UserNameTXT)
        applyTextFieldStyles(to: UserEmailTXT)
        applyTextFieldStyles(to: UserNumberTXT)
        applyTextFieldStyles(to: UserGenderTXT)
        applyTextFieldStyles(to: UsePasswordTXT)
        applyTextFieldStyles(to: UserReEnterPasswordTXT)
        
        ConfirmRegistrationBTN.layer.cornerRadius = 23
        ConfirmRegistrationBTN.layer.masksToBounds = true
        
        UserNumberTXT.text = "+91  "
    }
    
    
    func emailinvalidate(email:String) -> String?{
          let pattern = "[0-9a-z._%+-]+@[a-z0-9.-]+\\.[a-z]{3}"
          let predicate = NSPredicate(format: "SELF MATCHES %@", argumentArray: [pattern])
       let isValidEmailAddress = predicate.evaluate(with: email)
          if isValidEmailAddress == false
          {
              return "email not valid"
          }
        return nil
    }
    
    
    var Gender = ["Male","Female","Other"]
    let pickerView = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Edits_Text_Fields()
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        UserGenderTXT.inputView = pickerView
        
        UsePasswordTXT.isSecureTextEntry = true
        UsePasswordTXT.delegate = self
        
        UserReEnterPasswordTXT.isSecureTextEntry = true
        UserReEnterPasswordTXT.delegate = self
      
    }
}
extension RegistrationViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    
        
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
      return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Gender[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        UserGenderTXT.text = Gender[row]
        UserGenderTXT.resignFirstResponder()
        
    }
    
}
