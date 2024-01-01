//
//  OnlineComplaintViewController.swift
//  E-Police Station
//
//  Created by Apple on 28/12/23.
//

import UIKit

class OnlineComplaintViewController: UIViewController {
    
    @IBOutlet weak var ComplaintRegistrationDate: UITextField!
    @IBOutlet weak var NameTXT: UITextField!
    @IBOutlet weak var MobileNumberTXT: UITextField!
    @IBOutlet weak var EmailTXT: UITextField!
    @IBOutlet weak var GenderTXT: UITextField!
    @IBOutlet weak var LocationAreaTXT: UITextField!
    @IBOutlet weak var NearPoliceStationTXT: UITextField!
    @IBOutlet weak var LocationTXT: UITextField!
    
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
        ApplyTextFieldStyles(to: ComplaintRegistrationDate)
        ApplyTextFieldStyles(to: NameTXT)
        ApplyTextFieldStyles(to: MobileNumberTXT)
        ApplyTextFieldStyles(to: EmailTXT)
        ApplyTextFieldStyles(to: GenderTXT)
        ApplyTextFieldStyles(to: LocationAreaTXT)
        ApplyTextFieldStyles(to: NearPoliceStationTXT)
        ApplyTextFieldStyles(to: LocationTXT)
        
    }
}
