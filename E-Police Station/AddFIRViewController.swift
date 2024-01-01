//
//  AddFIRViewController.swift
//  E-Police Station
//
//  Created by Apple on 28/12/23.
//

import UIKit

class AddFIRViewController: UIViewController {
    
    //Text Fields Outlate
    @IBOutlet weak var DistrictNameTXT: UITextField!
    @IBOutlet weak var PoliceStationNameTXT: UITextField!
    @IBOutlet weak var FIRNumberTXT: UITextField!
    @IBOutlet weak var AccusedNameTXT: UITextField!
    @IBOutlet weak var ComplainantNameTXT: UITextField!
    @IBOutlet weak var ComplainantMiddleNameTXT: UITextField!
    @IBOutlet weak var ComplainantSurnameTXT: UITextField!
    @IBOutlet weak var FromDateFIRTXT: UITextField!
    @IBOutlet weak var NumberTXT: UITextField!
    
    
    
    
    @IBAction func FIRConfirmBTN(_ sender: Any) {
        let ok = storyboard?.instantiateViewController(withIdentifier: "OnlineComplaintViewController") as! OnlineComplaintViewController
        self.navigationController?.pushViewController(ok, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Edits_Text_Fields()
        saveUserData()
    }
    
    private func ApplyTextFieldStyles(to textField: UITextField) {
        textField.layer.cornerRadius = 20
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = 0.7

        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
    }
    
    private func Edits_Text_Fields(){
        ApplyTextFieldStyles(to: DistrictNameTXT)
        ApplyTextFieldStyles(to: PoliceStationNameTXT)
        ApplyTextFieldStyles(to: FIRNumberTXT)
        ApplyTextFieldStyles(to: AccusedNameTXT)
        ApplyTextFieldStyles(to: ComplainantNameTXT)
        ApplyTextFieldStyles(to: ComplainantMiddleNameTXT)
        ApplyTextFieldStyles(to: ComplainantSurnameTXT)
        ApplyTextFieldStyles(to: NumberTXT)
        ApplyTextFieldStyles(to: FromDateFIRTXT)
        
    }
    
    func saveUserData() {
            let userDefaults = UserDefaults.standard

            // Save data from text fields to UserDefaults
            userDefaults.set(DistrictNameTXT.text, forKey: "DistrictName")
            userDefaults.set(PoliceStationNameTXT.text, forKey: "PoliceStationName")
            userDefaults.set(FIRNumberTXT.text, forKey: "FIRNumber")
            userDefaults.set(AccusedNameTXT.text, forKey: "AccusedName")
            userDefaults.set(ComplainantNameTXT.text, forKey: "ComplainantName")
            userDefaults.set(ComplainantMiddleNameTXT.text, forKey: "ComplainantMiddleName")
            userDefaults.set(ComplainantSurnameTXT.text, forKey: "ComplainantSurname")
            userDefaults.set(FromDateFIRTXT.text, forKey: "FromDate")
            userDefaults.set(NumberTXT.text, forKey: "Number")
           
            // Synchronize UserDefaults to persist the changes immediately
            userDefaults.synchronize()
        }
    
    func loadUserData() {
        let userDefaults = UserDefaults.standard

        // Load data from UserDefaults to populate text fields
        DistrictNameTXT.text = userDefaults.string(forKey: "textField1")
        PoliceStationNameTXT.text = userDefaults.string(forKey: "textField2")
        FIRNumberTXT.text = userDefaults.string(forKey: "textField3")
        AccusedNameTXT.text = userDefaults.string(forKey: "textField4")
        ComplainantNameTXT.text = userDefaults.string(forKey: "textField5")
        ComplainantMiddleNameTXT.text = userDefaults.string(forKey: "textField6")
        ComplainantSurnameTXT.text = userDefaults.string(forKey: "textField7")
        FromDateFIRTXT.text = userDefaults.string(forKey: "textField7")
        NumberTXT.text = userDefaults.string(forKey: "textField7")
    }

}
