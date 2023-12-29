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
    @IBOutlet weak var ToDateFIRTXT: UITextField!
    
    
    
    @IBAction func FIRConfirmBTN(_ sender: Any) {
        let ok = storyboard?.instantiateViewController(withIdentifier: "OnlineComplaintViewController") as! OnlineComplaintViewController
        self.navigationController?.pushViewController(ok, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Edits_Text_Fields()
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
        ApplyTextFieldStyles(to: ToDateFIRTXT)
        ApplyTextFieldStyles(to: FromDateFIRTXT)
        
    }
}
